package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;
import java.util.UUID;

/**
 * Repository for the {@link QuestionAnswer} entity.
 *
 * @author Raphael Krebs
 */
public interface QuestionAnswerRepository extends SmarterVoteRepository<QuestionAnswer> {

    /**
     * Finds a politician question that matches a politician id and a question id.
     *
     * @param politicianId the id of the politician.
     * @param questionId the id of the question.
     * @return an optional containing the matching answer.
     */
    @Query("SELECT qa FROM QuestionAnswer qa WHERE qa.politician.id = :politicianId AND qa.question.id = :questionId")
    Optional<QuestionAnswer> findPoliticianQuestion(@Param("politicianId") UUID politicianId, @Param("questionId") UUID questionId);

}
