package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.HashSet;
import java.util.Set;

/**
 * Represents the ProposalResult table.
 *
 * @author Leo Rudin
 */
@Entity
@Table(name = "proposalresult")
public class ProposalResult extends BaseEntity {

    @OneToMany(mappedBy = "proposalResult")
    private Set<ProposalResultScore> proposalResultScores;

    public Set<ProposalResultScore> getProposalResultScores () {
        if (proposalResultScores == null) return new HashSet<>();
        return proposalResultScores;
    }

    public void setProposalResultScores (Set<ProposalResultScore> proposalResultScores) {
        this.proposalResultScores = proposalResultScores;
    }
}
