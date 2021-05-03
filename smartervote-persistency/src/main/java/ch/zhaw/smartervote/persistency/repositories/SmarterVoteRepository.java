package ch.zhaw.smartervote.persistency.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.util.List;
import java.util.UUID;

/**
 * Super interface for all repositories for the smarter vote project.
 *
 * @param <T> entity that this repository manages
 */
@NoRepositoryBean
public interface SmarterVoteRepository<T> extends CrudRepository<T, UUID> {

    /**
     * Overriding default findAll method that just returns an Iterable so it returns a List for convenience.
     *
     * @return list of find all
     */
    @Override
    List<T> findAll();

}