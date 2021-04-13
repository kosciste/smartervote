package ch.zhaw.smartervote.domain.mapping;

public interface MapTransferObjectToEntity<T, E> {

    /**
     * Maps a persistence entity to a transfer object.
     *
     * @param entity the persistence entity.
     * @return the transfer object.
     */
    T toTransferObject(E entity);

    /**
     * Maps a transfer object to a persistence entity.
     *
     * @param transferObject the transfer object to map.
     * @return the entity.
     */
    E toEntity(T transferObject);

}
