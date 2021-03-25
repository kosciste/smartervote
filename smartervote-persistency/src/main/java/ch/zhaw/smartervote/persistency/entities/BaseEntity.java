package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.UUID;

@Entity
public class BaseEntity {

    @Id
    @Column(name="id")
    private UUID id;

    @Column(name="creation_time")
    private Date creationTime;

    @Column(name="change_time")
    private Date changeTime;

    @PrePersist
    public void prePersist() {
        id = UUID.randomUUID();
        creationTime = new Date();
        changeTime = (Date)creationTime.clone();
    }

    public UUID getId() {
        return id;
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

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    public void setChangeTime(Date changeTime) {
        this.changeTime = changeTime;
    }
}