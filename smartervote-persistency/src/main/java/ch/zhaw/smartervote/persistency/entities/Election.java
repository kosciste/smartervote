package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import java.util.HashSet;
import java.util.Set;

/**
 * Represents the Election table.
 *
 * @author Stefan Teodoropol
 */
@Entity
public class Election extends BaseEntity {

    @OneToMany(mappedBy = "election")
    private Set<QuestionSubject> questionSubjects;

    @Column(name = "name", nullable = false)
    private String name;

    public Set<QuestionSubject> getQuestionSubjects() {
        if (questionSubjects == null) return new HashSet<>();
        return questionSubjects;
    }

    public String getName() {
        return name;
    }

    public void setQuestionSubjects(Set<QuestionSubject> questionSubjects) {
        this.questionSubjects = questionSubjects;
    }

    public void setName(String name) {
        this.name = name;
    }

}
