package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.UUID;

@Entity
@NamedQuery(
        name="Question.findByText",
        query="SELECT q FROM Question q where q.text like :text"
)
public class Question {

    @Id
    @Column(name="id")
    private UUID id;

    @Column(name="text")
    private String text;

    @Column(name="creation_time")
    private Date creationTime;

    @Column(name="change_time")
    private Date changeTime;

    @PrePersist
    public void prePersist() {
        id = UUID.randomUUID();
    }

    public UUID getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public Date getChangeTime() {
        return changeTime;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    public void setChangeTime(Date changeTime) {
        this.changeTime = changeTime;
    }

}
