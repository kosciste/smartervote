package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.domain.algorithm.ElectionProposalAlgorithm;
import ch.zhaw.smartervote.domain.mapping.MapElection;
import ch.zhaw.smartervote.domain.mapping.MapPolitician;
import ch.zhaw.smartervote.domain.mapping.MapQuestion;
import ch.zhaw.smartervote.domain.mapping.MapQuestionSubject;
import ch.zhaw.smartervote.persistency.entities.Election;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;
import ch.zhaw.smartervote.persistency.repositories.ElectionRepository;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;
import ch.zhaw.smartervote.persistency.repositories.QuestionSubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * {@inheritDoc}
 */
@Component("electionProposalService")
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

    @Autowired
    public ElectionProposalServiceImpl(ElectionRepository electionRepository,
                                       QuestionSubjectRepository questionSubjectRepository,
                                       ElectionProposalAlgorithm electionProposalAlgorithm,
                                       PoliticianRepository politicianRepository) {
        this.electionRepository = electionRepository;
        this.questionSubjectRepository = questionSubjectRepository;
        this.electionProposalAlgorithm = electionProposalAlgorithm;
        this.politicianRepository = politicianRepository;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Set<ElectionTO> getAvailableElections() {
        return MapElection.toTransferObjects(electionRepository.findAll());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Set<SubjectTO> getQuestionSubjects(UUID electionId) throws DomainException {
        Optional<Election> electionOptional = electionRepository.findById(electionId);
        if (electionOptional.isEmpty()) throw new DomainException("Election does not exist.");
        return MapQuestionSubject.toTransferObjects(electionOptional.get().getQuestionSubjects());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Map<SubjectTO, Set<QuestionTO>> getQuestionCatalogue(UUID electionId, Set<SubjectTO> selection)
            throws DomainException {
        Map<SubjectTO, Set<QuestionTO>> questions = new HashMap<>();
        for (SubjectTO subject : selection) {
            if (subject.getWeight() != SubjectWeight.NOT_INTERESTED) {
                Optional<QuestionSubject> subjectOptional = questionSubjectRepository.findById(subject.getId());

                if (subjectOptional.isEmpty()) throw new DomainException("Provided question subject does not exist.");
                if (!electionId.equals(subjectOptional.get().getElection().getId()))
                    throw new DomainException("Question subject does not belong to the provided election id.");

                questions.put(subject, MapQuestion.toTransferObjects(subjectOptional.get().getQuestions()));
            }
        }

        return questions;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public UUID calculateElectionProposal(UUID electionId, Map<SubjectTO, Set<QuestionTO>> questions)
            throws DomainException {
        Optional<Election> electionOptional = electionRepository.findById(electionId);
        if (electionOptional.isEmpty()) throw new DomainException("Election does not exist");
        List<PoliticianTO> politicians = MapPolitician.toTransferObjects(politicianRepository.findAll());
        return electionProposalAlgorithm.calculate(politicians, questions);
    }

}
