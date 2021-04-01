package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Column;

@Entity
public class PersonalQuestionAnswer extends BaseEntity {

    @OneToOne
    @JoinColumn(name="personal_question_id", nullable = false)
    private PersonalQuestion personalQuestion;

    @Column(name="text", nullable = false)
    private String text;

    public PersonalQuestion getPersonalQuestion() {
        return personalQuestion;
    }

    public String getText() {
        return text;
    }

    public void setPersonalQuestion(PersonalQuestion personalQuestion) {
        this.personalQuestion = personalQuestion;
    }

    public void setText(String text) {
        this.text = text;
    }

}
