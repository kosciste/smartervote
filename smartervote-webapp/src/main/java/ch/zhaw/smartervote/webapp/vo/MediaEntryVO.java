package ch.zhaw.smartervote.webapp.vo;

import java.util.Date;

/**
 *  This class represents a politician media entry for the view.
 *
 * @author Stefan Teodoropl
 */
public class MediaEntryVO {

    /**
     * The headline of the media entry.
     */
    private String headline;

    /**
     * The description of the media entry.
     */
    private String description;

    /**
     * The link pointing to the media entry.
     */
    private String link;

    /**
     * The publish date of the media entry.
     */
    private Date eventDate;

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
