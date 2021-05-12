package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.Question;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;

import java.util.List;

/**
 * Repository for the {@link Question} entity.
 *
 * @author Leo Rudin
 */
public interface QuestionRepository extends SmarterVoteRepository<Question> {

    /**
     * Returns a sorted list of {@link Question} for the given question subject.
     *
     * @param subject subect for which to fetch the question
     * @return sorted list of {@link Question} entities
     */
    List<Question> findQuestionByQuestionSubjectOrderByText(QuestionSubject subject);

}
