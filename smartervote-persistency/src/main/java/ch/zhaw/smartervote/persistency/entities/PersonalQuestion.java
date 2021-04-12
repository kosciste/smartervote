package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;

/**
 * Represents the PersonalQuestion table.
 *
 * @author Stefan Teodoropol
 */
@Entity
public class PersonalQuestion extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "politician_id", nullable = false)
    private Politician politician;

    @OneToOne(mappedBy = "personalQuestion")
    private PersonalQuestionAnswer personalQuestionAnswer;

    @OneToMany(mappedBy = "personalQuestion")
    private Set<PersonalQuestionUpvote> personalQuestionUpvotes;

    @Column(name = "text", nullable = false)
    private String text;

    @Column(name = "upvotes")
    private long upvotes;

    public Politician getPolitician() {
        return politician;
    }

    public PersonalQuestionAnswer getPersonalQuestionAnswer() {
        return personalQuestionAnswer;
    }

    public Set<PersonalQuestionUpvote> getPersonalQuestionUpvotes() {
        if(personalQuestionUpvotes == null) return new HashSet<>();
        return personalQuestionUpvotes;
    }

    public String getText() {
        return text;
    }

    public long getUpvotes() {
        return upvotes;
    }

    public void setPolitician(Politician politician) {
        this.politician = politician;
    }

    public void setPersonalQuestionAnswer(PersonalQuestionAnswer personalQuestionAnswer) {
        this.personalQuestionAnswer = personalQuestionAnswer;
    }

    public void setPersonalQuestionUpvotes(Set<PersonalQuestionUpvote> personalQuestionUpvotes) {
        this.personalQuestionUpvotes = personalQuestionUpvotes;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setUpvotes(long upvotes) {
        this.upvotes = upvotes;
    }

}
