package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.entities.Election;
import ch.zhaw.smartervote.persistency.repositories.iface.ElectionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Repository for questions.
 *
 * @author Raphael Krebs
 */
@Component("questionRepository")
public class ElectionRepositoryImpl extends BaseRepositoryImpl<Election> implements ElectionRepository {

    @Autowired
    public ElectionRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return Election.class;
    }

}
