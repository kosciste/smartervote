package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Repository for the politician personal questions.
 *
 * @author Stefan Teodoropol
 */
public interface PersonalQuestionRepository extends SmarterVoteRepository<PersonalQuestion> {

    List<PersonalQuestion> findPersonalQuestionByPoliticianIdOrderByUpvotesDesc(UUID politicianId);

    @Query("SELECT pq FROM PersonalQuestion pq " +
            "JOIN PersonalQuestionUpvote pqu ON pqu.personalQuestion.id = pq.id " +
            "WHERE pq.id IN (:ids) " +
            "AND pqu.ipAddress = :ipAddress")
    List<PersonalQuestion> findPersonalQuestionsByIdsAndIpAddress(@Param("ids") Set<UUID> ids, @Param("ipAddress") String ipAddress);

}
