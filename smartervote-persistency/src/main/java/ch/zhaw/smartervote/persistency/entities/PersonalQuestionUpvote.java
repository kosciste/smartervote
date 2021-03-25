package ch.zhaw.smartervote.persistency.entities;

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

    public String gettext() {
        return ipAddress;
    }

    public void setPersonalQuestionId(UUID personalQuestionId) {
        this.personalQuestionId = personalQuestionId;
    }

    public void setText(String ipAddress) {
        this.ipAddress = ipAddress;
    }

}
