package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Represents the QuestionSubject table.
 *
 * @author Stefan Teodoropol
 */
@Entity
@Table(name = "questionsubject")
public class QuestionSubject extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "election_id", nullable = false)
    private Election election;

    @OneToMany(mappedBy = "questionSubject")
    private Set<Question> questions;

    @Column(name = "name", nullable = false)
    private String name;

    public Election getElection() {
        return election;
    }

    public Set<Question> getQuestions() {
        if (questions == null) return new HashSet<>();
        return questions;
    }

    public String getName() {
        return name;
    }

    public void setElection(Election election) {
        this.election = election;
    }

    public void setQuestions(Set<Question> questions) {
        this.questions = questions;
    }

    public void setName(String name) {
        this.name = name;
    }

}
