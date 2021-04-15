package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;
import ch.zhaw.smartervote.persistency.repositories.iface.ProposalResultScoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Repository for proposal result scores.
 *
 * @author Raphael Krebs
 */
@Component("proposalResultScoreRepository")
public class ProposalResultScoreRepositoryImpl
        extends BaseRepositoryImpl<ProposalResultScore>
        implements ProposalResultScoreRepository {

    @Autowired
    public ProposalResultScoreRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return ProposalResultScore.class;
    }

}
