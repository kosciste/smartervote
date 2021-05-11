package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.persistency.entities.Election;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Maps election entity to transfer object.
 *
 * @author Raphael Krebs
 */
public class MapElection {

    /**
     * Maps a single election entity to transfer object.
     *
     * @param entity the election entity to be mapped
     * @return the mapped transfer object
     */
    public static ElectionTO toTransferObject(Election entity) {
        return new ElectionTO(entity.getId(), entity.getName());
    }

    /**
     * Maps a list of election entities to a set of transfer objects.
     *
     * @param entities the list of entities
     * @return the set of election transfer objects
     */
    public static Set<ElectionTO> toTransferObjects(List<Election> entities) {
        return entities.stream().map(MapElection::toTransferObject).collect(Collectors.toSet());
    }

}
