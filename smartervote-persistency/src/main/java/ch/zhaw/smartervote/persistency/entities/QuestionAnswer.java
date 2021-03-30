package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@Entity
public class QuestionAnswer extends BaseEntity {

    @ManyToOne
    @JoinColumn(name="question_id", nullable=false)
    private Question question;

    @ManyToOne
    @JoinColumn(name="politician_id", nullable=false)
    private Politician politician;

    @Column(name="answer")
    private int answer;

    public Question getQuestion() {
        return question;
    }

    public Politician getPolitician() {
        return politician;
    }

    public int getAnswer() {
        return answer;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public void setPolitician(Politician politician) {
        this.politician = politician;
    }

    public void setAnswer(int answer) {
        this.answer = answer;
    }
}
