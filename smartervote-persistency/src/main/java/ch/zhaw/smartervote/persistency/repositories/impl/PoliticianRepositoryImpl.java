package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.repositories.iface.PoliticianRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Repository for politicians.
 *
 * @author Raphael Krebs
 */
@Component("politicianRepository")
public class PoliticianRepositoryImpl extends BaseRepositoryImpl<Politician> implements PoliticianRepository {

    @Autowired
    public PoliticianRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return Politician.class;
    }

}
