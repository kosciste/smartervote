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

    /**
     * Finds all politicians that answered at least one question in a set of subjects.
     *
     * @param questionSubjects the question subject id's.
     * @return all politician that answered at least one question in the given subjects.
     */
    @Query(value = "SELECT DISTINCT p FROM QuestionSubject qs LEFT JOIN Question q on qs.id = q.questionSubject " +
            "LEFT JOIN QuestionAnswer qa on q.id = qa.question " +
            "LEFT JOIN Politician p on qa.politician = p.id " +
            "WHERE qs.id in :questionSubjectId")
    List<Politician> findPoliticiansBySubjects(@Param("questionSubjectId") Set<UUID> questionSubjects);

}
