package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Repository for the {@link QuestionAnswer} entity.
 *
 * @author Raphael Krebs
 */
public interface QuestionAnswerRepository extends SmarterVoteRepository<QuestionAnswer> {

    /**
     * Finds politician question of a politician for a set of subjects.
     *
     * @param politicianId the id of the politician.
     * @param subjectIds the ids of the subjects.
     * @return a list of all matching questions.
     */
    @Query("SELECT qa FROM QuestionSubject qs " +
            "LEFT JOIN Question q on qs.id = q.questionSubject " +
            "LEFT JOIN QuestionAnswer qa on q.id = qa.question " +
            "WHERE qa.politician.id = :politicianId AND qs.id in :subjectIds")
    List<QuestionAnswer> findPoliticianAnswers(@Param("politicianId") UUID politicianId,
                                               @Param("subjectIds") Set<UUID> subjectIds);

}
