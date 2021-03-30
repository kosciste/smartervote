package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQuery(
        name="Question.findByText",
        query="SELECT q FROM Question q where q.text like :text"
)
public class Question extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "question_subject_id", nullable=false)
    private QuestionSubject questionSubject;

    @OneToMany(mappedBy = "question_id")
    private Set<QuestionAnswer> questionAnswers;

    @Column(name="title")
    private String title;

    public QuestionSubject getQuestionSubject() {
        return this.questionSubject;
    }

    public Set<QuestionAnswer> getQuestionAnswers() {
        return this.questionAnswers;
    }

    public String getTitle() {
        return title;
    }

    public void setQuestionSubject(QuestionSubject questionSubject) {
        this.questionSubject = questionSubject;
    }

    public void setQuestionAnswers(Set<QuestionAnswer> questionAnswers) {
        this.questionAnswers = questionAnswers;
    }

    public void setTitle(String title) {
        this.title = title;
    }

}
