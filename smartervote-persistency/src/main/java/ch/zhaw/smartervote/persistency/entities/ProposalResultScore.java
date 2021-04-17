package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * Represents the PersonalProposalScore table.
 *
 * @author Leo Rudin
 */
@Entity
public class ProposalResultScore extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "proposal_result_id", nullable = false)
    private ProposalResult proposalResult;

    @ManyToOne
    @JoinColumn(name = "politician_id", nullable = false)
    private Politician politician;

    @Column(name = "matching_score", nullable = false)
    private int matchingScore;

    public ProposalResult getProposalResult() {
        return proposalResult;
    }

    public Politician getPolitician() {
        return politician;
    }

    public int getMatchingScore() {
        return matchingScore;
    }

    public void setProposalResult(ProposalResult proposalResult) {
        this.proposalResult = proposalResult;
    }

    public void setPolitician(Politician politician) {
        this.politician = politician;
    }

    public void setMatchingScore(int matchingScore) {
        this.matchingScore = matchingScore;
    }

}
