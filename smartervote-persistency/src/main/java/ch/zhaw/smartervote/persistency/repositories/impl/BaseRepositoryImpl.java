package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.Repository;
import org.hibernate.Session;

import javax.persistence.NoResultException;
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
     * Instance of the database connection.
     */
    protected final DatabaseConnection databaseConnection;

    public BaseRepositoryImpl(DatabaseConnection databaseConnection) {
        this.databaseConnection = databaseConnection;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<T> findAll() {
        Session session = databaseConnection.createSession();
        Query query = session.createQuery("SELECT e FROM " + getClassType().getSimpleName() + " e");
        return query.getResultList();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Optional<T> findById(UUID id) {
        Session session = databaseConnection.createSession();

        Query query = session.createQuery("SELECT e FROM " + getClassType().getSimpleName() + " e WHERE e.id = :id");
        query.setParameter("id", id);

        try {
            return Optional.of((T) query.getSingleResult());
        } catch (NoResultException ex) {
            return Optional.empty();
        }

    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Long count() {
        Session session = databaseConnection.createSession();
        Query query = session.createQuery("SELECT COUNT(e) FROM " + getClassType().getSimpleName() + " e");
        return (Long) query.getSingleResult();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void insert(T entity) {
        Session session = databaseConnection.createSession();
        session.beginTransaction();
        session.persist(entity);
        session.flush();
        session.getTransaction().commit();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void insert(List<T> entities) {
        Session session = databaseConnection.createSession();
        session.beginTransaction();
        for (T entity : entities) {
            session.persist(entity);
        }
        session.flush();
        session.getTransaction().commit();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void update(T entity) {
        Session session = databaseConnection.createSession();
        session.beginTransaction();
        session.merge(entity);
        session.flush();
        session.getTransaction().commit();
    }

    /**
     * Returns the class type this repository is managing.
     *
     * @return class type
     */
    protected abstract Class<?> getClassType();

}
