package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 * Represents the Question table.
 *
 * @author Stefan Teodoropol
 */
@Entity
@NamedQuery(
        name="Question.findByText",
        query="SELECT q FROM Question q where q.text like :text"
)
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
