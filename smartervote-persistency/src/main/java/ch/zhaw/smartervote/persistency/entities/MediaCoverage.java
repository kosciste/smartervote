package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.Column;
import java.util.Date;
import java.util.UUID;

@Entity
public class MediaCoverage extends BaseEntity {

    @Column(name="politician_id")
    private UUID politicianId;

    @Column(name="headline")
    private String headline;

    @Column(name="description")
    private String description;

    @Column(name="link")
    private String link;

    @Column(name="event_date")
    private Date eventDate;

    public UUID getPoliticianId() {
        return politicianId;
    }

    public String getHeadline() {
        return headline;
    }

    public String getDescription() {
        return description;
    }

    public String getLink() {
        return link;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setPoliticianId(UUID politicianId) {
        this.politicianId = politicianId;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }
}
