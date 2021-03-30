package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Column;

@Entity
public class PersonalQuestionAnswer extends BaseEntity {

    @OneToOne
    @JoinColumn(name="personal_question_id")
    private PersonalQuestion personalQuestion;

    @Column(name="answer")
    private String answer;

    public PersonalQuestion getPersonalQuestion() {
        return personalQuestion;
    }

    public String getAnswer() {
        return answer;
    }

    public void setPersonalQuestion(PersonalQuestion personalQuestion) {
        this.personalQuestion = personalQuestion;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

}
