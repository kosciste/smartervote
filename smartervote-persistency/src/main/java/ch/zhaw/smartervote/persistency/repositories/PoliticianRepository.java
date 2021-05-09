package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.Politician;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Repository for the politicians.
 *
 * @author Raphael Krebs
 */
public interface PoliticianRepository extends SmarterVoteRepository<Politician>, JpaSpecificationExecutor<Politician> {

}
