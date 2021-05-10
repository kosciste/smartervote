package ch.zhaw.smartervote.persistency.repositories;

import ch.zhaw.smartervote.persistency.entities.MediaCoverage;

import java.util.List;
import java.util.UUID;

public interface MediaCoverageRepository extends SmarterVoteRepository<MediaCoverage> {

    List<MediaCoverage> findMediaCoverageByPoliticianIdOrderByCreationTime(UUID politicianId);

}
