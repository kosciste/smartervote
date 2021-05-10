package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.MediaEntryTO;
import ch.zhaw.smartervote.persistency.entities.MediaCoverage;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Maps MediaCoverage entities to MediaEntryTO transfer objects.
 *
 * @author Stefan Teodoropol
 */
public class MapMediaCoverage {

    /**
     * Maps a single MediaCoverage entity to a MediaEntryTO transfer object.
     *
     * @param entity the question entity.
     * @return the question transfer object.
     */
    public static MediaEntryTO toTransferObject(MediaCoverage entry) {
        return new MediaEntryTO(entry.getHeadline(),entry.getDescription(),entry.getLink(),entry.getEventDate());
    }

    /**
     * Maps a set of MediaCoverage entities to a set of MediaEntryTO transfer object.
     *
     * @param entities a set of question entities.
     * @return the set of question transfer objects.
     */
    public static List<MediaEntryTO> toTransferObjects(List<MediaCoverage> entities) {
        return entities.stream().map(MapMediaCoverage::toTransferObject).collect(Collectors.toList());
    }

}
