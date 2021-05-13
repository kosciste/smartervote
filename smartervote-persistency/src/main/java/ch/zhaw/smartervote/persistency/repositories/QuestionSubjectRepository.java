package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.Election;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;

import java.util.List;

/**
 * Repository for the {@link QuestionSubject} entity.
 *
 * @author Raphael Krebs
 */
public interface QuestionSubjectRepository extends SmarterVoteRepository<QuestionSubject> {

    /**
     * Returns a sorted list of {@link QuestionSubject} for the given election.
     *
     * @param election the election for which to fetch the media coverages
     * @return sorted list of {@link QuestionSubject} entities
     */
    List<QuestionSubject> findQuestionSubjectByElectionOrderByName(Election election);

}
