package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.Column;
import java.util.UUID;

@Entity
public class PersonalQuestionUpvote extends BaseEntity {

    @Column(name="personal_question_id")
    private UUID personalQuestionId;

    @Column(name="ip_address")
    private String ipAddress;

    public UUID getPersonalQuestionId() {
        return personalQuestionId;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setPersonalQuestionId(UUID personalQuestionId) {
        this.personalQuestionId = personalQuestionId;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

}
