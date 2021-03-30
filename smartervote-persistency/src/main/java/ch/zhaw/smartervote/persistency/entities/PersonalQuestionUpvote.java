package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@Entity
public class PersonalQuestionUpvote extends BaseEntity {

    @ManyToOne
    @JoinColumn(name="personal_question_id")
    private PersonalQuestion personalQuestion;

    @Column(name="ip_address")
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
