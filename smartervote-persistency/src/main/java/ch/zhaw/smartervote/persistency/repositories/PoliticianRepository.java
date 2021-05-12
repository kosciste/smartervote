package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.Politician;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Repository for the {@link Politician} entity.
 *
 * @author Raphael Krebs
 */
public interface PoliticianRepository extends SmarterVoteRepository<Politician>, JpaSpecificationExecutor<Politician> {

    @Query("SELECT DISTINCT p FROM Politician p LEFT JOIN QuestionAnswer qa ON qa.id = p.id LEFT JOIN Question q ON qa.id = q.id LEFT JOIN QuestionSubject qs  ON qs.id = q.id where qs.id in :questionSubjectId")
    List<Politician> findPoliticianBySubject(@Param("questionSubjectId") Set<UUID> questionSubjects);

}
