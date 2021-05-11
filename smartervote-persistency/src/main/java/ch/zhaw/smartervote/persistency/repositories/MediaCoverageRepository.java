package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.MediaCoverage;

import java.util.List;
import java.util.UUID;

/**
 * Repository for the {@link MediaCoverage} entity.
 *
 * @author Leo Rudin
 */
public interface MediaCoverageRepository extends SmarterVoteRepository<MediaCoverage> {

    /**
     * Returns a sorted list of {@link MediaCoverage} for the given politician.
     *
     * @param politicianId politician id for which to fetch the media coverages
     * @return sorted list of {@link MediaCoverage} entities
     */
    List<MediaCoverage> findMediaCoverageByPoliticianIdOrderByCreationTime(UUID politicianId);

}
