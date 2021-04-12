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
public class PersonalProposalScore extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "proposal_result_id", nullable = false)
    private PersonalQuestion personalQuestion;

    @ManyToOne
    @JoinColumn(name = "politician_id", nullable = false)
    private Politician politician;

    @Column(name = "matching_score", nullable = false)
    private int matchingScore;

    public PersonalQuestion getPersonalQuestion() {
        return personalQuestion;
    }

    public Politician getPolitician() {
        return politician;
    }

    public int getMatchingScore() {
        return matchingScore;
    }

    public void setPersonalQuestion(PersonalQuestion personalQuestion) {
        this.personalQuestion = personalQuestion;
    }

    public void setPolitician(Politician politician) {
        this.politician = politician;
    }

    public void setMatchingScore(int matchingScore) {
        this.matchingScore = matchingScore;
    }

}
