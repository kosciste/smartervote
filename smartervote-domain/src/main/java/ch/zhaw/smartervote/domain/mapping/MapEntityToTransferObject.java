package ch.zhaw.smartervote.domain.mapping;

import java.util.Collection;
import java.util.List;

public interface MapEntityToTransferObject<T, E, C extends Collection<T>> {

    /**
     * Maps a persistence entity to a transfer object.
     *
     * @param entity the persistence entity.
     * @return the transfer object.
     */
    T toTransferObject(E entity);

    C toTransferObjects(List<T> entities);

}
