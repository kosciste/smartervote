package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.entities.Party;
import ch.zhaw.smartervote.persistency.repositories.iface.PartyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("partyRepository")
public class PartyRepositoryImpl extends BaseRepositoryImpl<Party> implements PartyRepository {

    @Autowired
    public PartyRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return Party.class;
    }

}
