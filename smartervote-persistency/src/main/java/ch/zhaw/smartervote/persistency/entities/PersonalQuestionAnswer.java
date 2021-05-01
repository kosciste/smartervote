package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;

/**
 * Represents the PersonalQuestionAnswer table.
 *
 * @author Stefan Teodoropol
 */
@Entity
@Table(name = "personalquestionanswer")
public class PersonalQuestionAnswer extends BaseEntity {

    @OneToOne
    @JoinColumn(name = "personal_question_id", nullable = false, unique = true)
    private PersonalQuestion personalQuestion;

    @Column(name = "text", nullable = false)
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
