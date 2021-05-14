package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.domain.algorithm.ElectionProposalAlgorithm;
import ch.zhaw.smartervote.domain.mapping.MapElection;
import ch.zhaw.smartervote.domain.mapping.MapQuestion;
import ch.zhaw.smartervote.domain.mapping.MapQuestionSubject;
import ch.zhaw.smartervote.persistency.entities.Election;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;
import ch.zhaw.smartervote.persistency.repositories.ElectionRepository;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;
import ch.zhaw.smartervote.persistency.repositories.QuestionRepository;
import ch.zhaw.smartervote.persistency.repositories.QuestionAnswerRepository;
import ch.zhaw.smartervote.persistency.repositories.QuestionSubjectRepository;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.stream.Collectors;

/**
 * Implementation for the election proposal service which provides functionality for the whole election proposal
 * process.
 *
 * @author Raphael Krebs
 * @author Leo Rudin
 * @author Karin Birle
 */
@Component
public class ElectionProposalServiceImpl implements ElectionProposalService {

    /**
     * The repository for elections.
     */
    private final ElectionRepository electionRepository;

    /**
     * The repository for question subjects.
     */
    private final QuestionSubjectRepository questionSubjectRepository;

    /**
     * The repository for politicians.
     */
    private final PoliticianRepository politicianRepository;

    /**
     * The algorithm for the election proposal.
     */
    private final ElectionProposalAlgorithm electionProposalAlgorithm;

    private final QuestionAnswerRepository questionAnswerRepository;

    private final ProposalResultWriter proposalResultWriter;

    /**
     * The question repository.
     */
    private final QuestionRepository questionRepository;

    @Autowired
    public ElectionProposalServiceImpl(ElectionRepository electionRepository,
                                       QuestionSubjectRepository questionSubjectRepository,
                                       ElectionProposalAlgorithm electionProposalAlgorithm,
                                       PoliticianRepository politicianRepository,
                                       ProposalResultWriter proposalResultWriter,
                                       QuestionAnswerRepository questionAnswerRepository) {
                                       PoliticianRepository politicianRepository,
                                       QuestionRepository questionRepository) {
        this.electionRepository = electionRepository;
        this.questionSubjectRepository = questionSubjectRepository;
        this.electionProposalAlgorithm = electionProposalAlgorithm;
        this.politicianRepository = politicianRepository;
        this.proposalResultWriter = proposalResultWriter;
        this.questionAnswerRepository = questionAnswerRepository;
        this.questionRepository = questionRepository;
    }

    /**
     * {@inheritDoc}
     *
     * @return
     */
    @Override
    public List<ElectionTO> getAvailableElections() {
        return MapElection.toTransferObjects(electionRepository.findAll());
    }

    /**
     * {@inheritDoc}
     *
     * @return
     */
    @Override
    public List<SubjectTO> getQuestionSubjects(UUID electionId) throws DomainException {
        Optional<Election> electionOptional = electionRepository.findById(electionId);
        if (electionOptional.isEmpty()) throw new DomainException("Election does not exist.");
        return MapQuestionSubject.toTransferObjects(
                questionSubjectRepository.findQuestionSubjectByElectionOrderByName(electionOptional.get()));
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Map<SubjectTO, List<QuestionTO>> getQuestionCatalogue(UUID electionId, List<SubjectTO> selection)
            throws DomainException {
        Map<SubjectTO, List<QuestionTO>> questions = new HashMap<>();
        for (SubjectTO subject : selection) {
            if (subject.getWeight() != SubjectWeight.NOT_INTERESTED) {
                Optional<QuestionSubject> subjectOptional = questionSubjectRepository.findById(subject.getId());
                if (subjectOptional.isEmpty()) throw new DomainException("Provided question subject does not exist.");
                if (!electionId.equals(subjectOptional.get().getElection().getId()))
                    throw new DomainException("Question subject does not belong to the provided election id.");
                questions.put(subject, MapQuestion.toTransferObjects(
                        questionRepository.findQuestionByQuestionSubjectOrderById(subjectOptional.get())));
            }
        }
        return questions;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public UUID calculateElectionProposal(UUID electionId, Map<SubjectTO, List<QuestionTO>> questions)
            throws DomainException {
        Optional<Election> electionOptional = electionRepository.findById(electionId);
        if (electionOptional.isEmpty()) throw new DomainException("Election does not exist");

        Set<UUID> subjectIds = questions.keySet().stream().map(SubjectTO::getId).collect(Collectors.toSet());
        for (UUID subjectId : subjectIds) {
            if (questionSubjectRepository.findById(subjectId).isEmpty()) {
                throw new DomainException("Subject id " + subjectId + " does not exist.");
            }
        }
        List<Politician> politicians = politicianRepository.findPoliticianBySubject(subjectIds);
        Map<Politician, Integer> matchingScores = new HashMap<>();
        for (Politician politician : politicians) {
            List<QuestionAnswer> questionAnswers =
                    questionAnswerRepository.findPoliticianQuestion(politician.getId(), subjectIds);
            matchingScores.put(politician, electionProposalAlgorithm.calculateResult(questionAnswers, questions));
        }
        return proposalResultWriter.writeScores(matchingScores);
    }

}
