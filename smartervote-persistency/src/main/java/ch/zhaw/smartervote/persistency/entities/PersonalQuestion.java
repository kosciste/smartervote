package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;

@Entity
public class PersonalQuestion extends BaseEntity {

    @ManyToOne
    @JoinColumn(name="politician_id")
    private Politician politician;

    @OneToOne(mappedBy ="personal_question_id")
    private PersonalQuestionAnswer personalQuestionAnswer;

    @OneToOne(mappedBy ="personal_question_id")
    private Set<PersonalQuestionUpvote> personalQuestionUpvotes;

    @Column(name="title")
    private String title;

    @Column(name="description")
    private String description;

    @Column(name="upvotes")
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

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
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

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setUpvotes(long upvotes) {
        this.upvotes = upvotes;
    }

}
