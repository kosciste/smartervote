package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;
import java.util.Date;

@Entity
public class MediaCoverage extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "politician_id", nullable=false)
    private Politician politician;

    @Column(name="headline")
    private String headline;

    @Column(name="description")
    private String description;

    @Column(name="link")
    private String link;

    @Column(name="event_date")
    private Date eventDate;

    public Politician getPolitician() {
        return politician;
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

    public void setPolitician(Politician politician) {
        this.politician = politician;
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
