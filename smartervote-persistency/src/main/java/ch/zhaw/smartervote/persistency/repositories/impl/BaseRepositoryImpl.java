package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.Repository;
import org.hibernate.Session;

import javax.persistence.Query;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * Base repository that provides common functionality for all repositories.
 *
 * @param <T> entity class to manage
 * @author Leo Rudin
 */
public abstract class BaseRepositoryImpl<T> implements Repository<T> {

    /**
     * {@inheritDoc}
     */
    @Override
    public List<T> findAll() {
        Session session = DatabaseConnection.getInstance().createSession();
        Query query = session.createQuery("SELECT e FROM " + getClassType().getSimpleName() + " e");
        return query.getResultList();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Optional<T> findById(UUID id) {
        Session session = DatabaseConnection.getInstance().createSession();
        Query query = session.createQuery("SELECT e FROM " + getClassType().getSimpleName() + " e WHERE e.id = :id");
        query.setParameter("id", id);
        return Optional.of((T) query.getSingleResult());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Long count() {
        Session session = DatabaseConnection.getInstance().createSession();
        Query query = session.createQuery("SELECT COUNT(e) FROM " + getClassType().getSimpleName() + " e");
        return (Long) query.getSingleResult();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void save(T obj) {
        DatabaseConnection.getInstance().createSession().save(obj);
    }

    /**
     * Returns the class type this repository is managing.
     *
     * @return class type
     */
    protected abstract Class<?> getClassType();

}
