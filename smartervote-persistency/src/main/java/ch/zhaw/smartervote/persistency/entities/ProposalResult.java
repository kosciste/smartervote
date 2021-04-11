package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import java.util.HashSet;
import java.util.Set;

/**
 * Represents the ProposalResult table.
 *
 * @author Leo Rudin
 */
@Entity
public class ProposalResult extends BaseEntity {

    @OneToMany(mappedBy = "proposalResult")
    private Set<ProposalResultScore> proposalResultScores;

    public Set<ProposalResultScore> getProposalResultScores () {
        if (proposalResultScores == null) return new HashSet<>();
        return proposalResultScores;
    }

}
