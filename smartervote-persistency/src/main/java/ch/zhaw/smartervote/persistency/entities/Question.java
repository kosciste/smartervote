package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;
import java.util.Set;

/**
 * Represents the Question table.
 *
 * @author Stefan Teodoropol
 */
@Entity
public class Question extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "question_subject_id", nullable = false)
    private QuestionSubject questionSubject;

    @OneToMany(mappedBy = "question")
    private Set<QuestionAnswer> questionAnswers;

    @Column(name = "text", nullable = false)
    private String text;

    public QuestionSubject getQuestionSubject() {
        return this.questionSubject;
    }

    public Set<QuestionAnswer> getQuestionAnswers() {
        return this.questionAnswers;
    }

    public String getText() {
        return text;
    }

    public void setQuestionSubject(QuestionSubject questionSubject) {
        this.questionSubject = questionSubject;
    }

    public void setQuestionAnswers(Set<QuestionAnswer> questionAnswers) {
        this.questionAnswers = questionAnswers;
    }

    public void setT(String text) {
        this.text = text;
    }

}
