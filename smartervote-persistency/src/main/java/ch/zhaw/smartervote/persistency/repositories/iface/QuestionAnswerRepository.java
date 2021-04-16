package ch.zhaw.smartervote.persistency.repositories.iface;

import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;

import java.util.Optional;
import java.util.UUID;

/**
 * Repository for the question answers.
 *
 * @author Raphael Krebs
 */
public interface QuestionAnswerRepository extends Repository<QuestionAnswer> {

    /**
     * Finds a politician question that matches a politician and a question.
     *
     * @param politicianId the id of the politician.
     * @param questionId the id of the question.
     * @return an optional containing the matching answer.
     */
    Optional<QuestionAnswer> findPoliticianQuestion(UUID politicianId, UUID questionId);

}
