package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import ch.zhaw.smartervote.persistency.entities.Politician;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Maps election entity to transfer object.
 *
 * @author Raphael Krebs
 */
public class MapPolitician {

    /**
     * Maps a single election entity to transfer object.
     *
     * @param entity the election entity to be mapped.
     * @return the mapped transfer object.
     */
    public static PoliticianTO toTransferObject(Politician entity) {
        return new PoliticianTO(entity.getId(),
                entity.getPicture(),
                entity.getName(),
                entity.getParty().getName(),
                entity.getBirthyear(),
                0);
    }

    /**
     * Maps a single election entity to transfer object, and adds the matching score.
     *
     * @param entity the election entity to be mapped.
     * @param match the matching score.
     * @return the mapped transfer object.
     */
    public static PoliticianTO toTransferObject(Politician entity, int match) {
        return new PoliticianTO(entity.getId(),
                entity.getPicture(),
                entity.getName(),
                entity.getParty().getName(),
                entity.getBirthyear(),
                match);
    }

    /**
     * Maps a list of election entities to a set of transfer objects.
     *
     * @param entities the list of entities.
     * @return the set of election transfer objects.
     */
    public static List<PoliticianTO> toTransferObjects(List<Politician> entities) {
        return entities.stream().map(MapPolitician::toTransferObject).collect(Collectors.toList());
    }

}
