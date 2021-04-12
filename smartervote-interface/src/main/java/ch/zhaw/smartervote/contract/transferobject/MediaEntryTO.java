package ch.zhaw.smartervote.contract.transferobject;

import java.util.Date;

/**
 * This class represents a media entry in which a politician was mentioned.
 *
 * @author Raphael Krebs
 */
public class MediaEntryTO {
    /**
     * The hedline of the media entry.
     */
    private final String headline;
    /**
     * The description of the media entry.
     */
    private final String description;
    /**
     * The link pointing to the media entry.
     */
    private final String link;
    /**
     * The publish date of the media entry.
     */
    private final Date eventDate;

    public MediaEntryTO(String headline, String description, String link, Date eventDate) {
        this.headline = headline;
        this.description = description;
        this.link = link;
        this.eventDate = eventDate;
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

}
