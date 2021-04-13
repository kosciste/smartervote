package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.domain.algorithm.ElectionProposalAlgorithm;
import ch.zhaw.smartervote.domain.mapping.MapElection;
import ch.zhaw.smartervote.domain.mapping.MapQuestion;
import ch.zhaw.smartervote.domain.mapping.MapQuestionSubject;
import ch.zhaw.smartervote.persistency.entities.Election;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;
import ch.zhaw.smartervote.persistency.repositories.iface.ElectionRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionSubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * {@inheritDoc}
 */
@Component("electionProposalService")
public class ElectionProposalServiceImpl implements ElectionProposalService {

    private final ElectionRepository electionRepository;

    private final QuestionSubjectRepository questionSubjectRepository;

    @Autowired
    public ElectionProposalServiceImpl(ElectionRepository electionRepository,
                                       QuestionSubjectRepository questionSubjectRepository) {
        this.electionRepository = electionRepository;
        this.questionSubjectRepository = questionSubjectRepository;
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
    public Set<SubjectTO> getQuestionSubjects(UUID electionId) {
        Optional<Election> electionOptional = electionRepository.findById(electionId);
        if (electionOptional.isEmpty()) throw new IllegalArgumentException("Election does not exist.");
        return MapQuestionSubject.toTransferObjects(electionOptional.get().getQuestionSubjects());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Map<SubjectTO, Set<QuestionTO>> getQuestionCatalogue(UUID electionId, Set<SubjectTO> selection) {
        Map<SubjectTO, Set<QuestionTO>> questions = new HashMap<>();
        for (SubjectTO subject : selection) {
            Optional<QuestionSubject> subjectOptional = questionSubjectRepository.findById(subject.getId());
            if (subjectOptional.isEmpty()) throw new IllegalArgumentException("Election does not exist.");
            questions.put(subject, MapQuestion.toTransferObjects(subjectOptional.get().getQuestions()));
        }
        return questions;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public UUID calculateElectionProposal(UUID electionId, Map<SubjectTO, Set<QuestionTO>> questions) {
        return ElectionProposalAlgorithm.calculate(electionId, questions);
    }

}
