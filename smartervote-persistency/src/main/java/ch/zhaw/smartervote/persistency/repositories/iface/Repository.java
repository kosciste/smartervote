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
     * Finds elements in a field by text.
     * <p>
     * * @param field the field name
     *
     * @param text the string to be found
     * @return found elements
     */
    List<T> findByText(String field, String text);

    /**
     * Counts the amount of records.
     *
     * @return amount of elements
     */
    Long count();

    /**
     * Insert the given entity into the database.
     *
     * @param entity entity to save
     */
    void insert(T entity);

    /**
     * Inserts the given list of entities into the database.
     *
     * @param entities entities to save
     */
    void insert(List<T> entities);

    /**
     * Updates the given entity with the database.
     *
     * @param entity entity to update
     */
    void update(T entity);

}
