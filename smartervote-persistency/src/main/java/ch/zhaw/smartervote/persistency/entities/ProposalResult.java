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

    @OneToMany(mappedBy = "personalQuestion")
    private Set<PersonalProposalScore> personalResultScores;

    public Set<PersonalProposalScore> getPersonalResultScores() {
        if (personalResultScores == null) return new HashSet<>();
        return personalResultScores;
    }

    public void setPersonalResultScores(Set<PersonalProposalScore> personalResultScores) {
        this.personalResultScores = personalResultScores;
    }

}
