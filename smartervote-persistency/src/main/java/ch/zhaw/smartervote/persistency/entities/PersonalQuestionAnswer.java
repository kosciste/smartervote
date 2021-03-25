package ch.zhaw.smartervote.persistency.entities;

import java.util.UUID;

@Entity
public class PersonalQuestionAnswer extends BaseEntity {

    @Column(name="personal_question_id")
    private UUID personalQuestionId;

    @Column(name="text")
    private String text;

    public UUID getPersonalQuestionId() {
        return personalQuestionId;
    }

    public String gettext() {
        return text;
    }

    public void setPersonalQuestionId(UUID personalQuestionId) {
        this.personalQuestionId = personalQuestionId;
    }

    public void setText(String text) {
        this.text = text;
    }

}
