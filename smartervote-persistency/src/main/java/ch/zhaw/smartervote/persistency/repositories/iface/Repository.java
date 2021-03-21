package ch.zhaw.smartervote.persistency.repositories.iface;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * Interface with methods that are provided by all repositories.
 *
 * @param <T> managed entity type
 * @author Leo Rudin
 */
public interface Repository<T> {

    /**
     * Returns all elements.
     *
     * @return all elements
     */
    List<T> findAll();

    /**
     * Finds type by id.
     *
     * @param id id to look for
     * @return found object
     */
    Optional<T> findById(UUID id);

    /**
     * Counts the amount of records.
     *
     * @return amount of elements
     */
    Long count();

    /**
     * Persists a new entity to the database.
     *
     * @param obj entity to save
     */
    void save(T obj);

}
