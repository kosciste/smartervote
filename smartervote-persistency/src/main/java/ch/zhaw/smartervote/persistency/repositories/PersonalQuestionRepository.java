package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Repository for the {@link PersonalQuestion} entity.
 *
 * @author Stefan Teodoropol
 */
public interface PersonalQuestionRepository extends SmarterVoteRepository<PersonalQuestion> {

    /**
     * Increments the upvote field for the {@link PersonalQuestion} with the given id.
     *
     * @param id id of {@link PersonalQuestion} to update
     * @return number of updated rows
     */
    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Transactional
    @Query("UPDATE PersonalQuestion pq SET pq.upvotes = pq.upvotes + 1 WHERE pq.id = :id")
    int upvotePersonalQuestion(@Param("id") UUID id);

    /**
     * Returns a sorted list of {@link PersonalQuestion} entities for the given politician id.
     *
     * @param politicianId politician id for which to fetch the {@link PersonalQuestion} entities
     * @return list of sorted {@link PersonalQuestion} entities
     */
    List<PersonalQuestion> findPersonalQuestionByPoliticianIdOrderByUpvotesDesc(UUID politicianId);

    /**
     * Returns all {@link PersonalQuestion} entities with the given id that were upvoted by the given ip address.
     *
     * @param ids ids to check
     * @param ipAddress ip address to check
     * @return list of {@link PersonalQuestion} entities
     */
    @Query("SELECT pq FROM PersonalQuestion pq " +
            "JOIN PersonalQuestionUpvote pqu ON pqu.personalQuestion.id = pq.id " +
            "WHERE pq.id IN (:ids) " +
            "AND pqu.ipAddress = :ipAddress")
    List<PersonalQuestion> findPersonalQuestionsByIdsAndIpAddress(@Param("ids") Set<UUID> ids, @Param("ipAddress") String ipAddress);

}
