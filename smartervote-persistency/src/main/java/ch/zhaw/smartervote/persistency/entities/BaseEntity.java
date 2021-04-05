package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.UUID;

/**
 * Super class that contains attributes that are added on all tables.
 *
 * @author Stefan Teodoropol
 */
@MappedSuperclass
public class BaseEntity {

    @Id
    @Column(name = "id", nullable = false)
    private UUID id;

    @Column(name = "creation_time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationTime;

    @Column(name = "change_time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
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

}