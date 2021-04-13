package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.persistency.entities.Election;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class MapElection {

    public static ElectionTO toTransferObject(Election entity) {
        return new ElectionTO(entity.getId(), entity.getName());
    }

    public static Set<ElectionTO> toTransferObjects(List<Election> entities) {
        return entities.stream().map(MapElection::toTransferObject).collect(Collectors.toSet());
    }

}
