package ch.zhaw.smartervote.contract.transferobject;

import java.util.Date;

public class MediaEntryTO {
    private String headline;
    private String description;
    private String link;
    private Date eventDate;

    public MediaEntryTO(String headline, String description, String link, Date eventDate) {
        this.headline = headline;
        this.description = description;
        this.link = link;
        this.eventDate = eventDate;
    }

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }
}
