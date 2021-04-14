package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.repositories.iface.ProposalResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("proposalResultRepository")
public class ProposalResultRepositoryImpl extends BaseRepositoryImpl<ProposalResult> implements ProposalResultRepository {

    @Autowired
    public ProposalResultRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return ProposalResult.class;
    }

}
