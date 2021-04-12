package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

/**
 * Represents the PersonalQuestionUpvote table.
 *
 * @author Stefan Teodoropol
 */
@Entity
public class PersonalQuestionUpvote extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "personal_question_id", nullable = false)
    private PersonalQuestion personalQuestion;

    @Column(name = "ip_address", nullable = false)
    private String ipAddress;

    public PersonalQuestion getPersonalQuestion() {
        return personalQuestion;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setPersonalQuestion(PersonalQuestion personalQuestion) {
        this.personalQuestion = personalQuestion;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

}
