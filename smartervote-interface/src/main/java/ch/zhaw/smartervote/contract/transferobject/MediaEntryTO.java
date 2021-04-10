package ch.zhaw.smartervote.contract.transferobject;

import java.util.Date;
import java.util.Objects;

/**
 * This class represents a media entry in which a politician was mentioned.
 * @author krebsrap
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

    /**
     * Compares the given MediaEntryTO object to this object.
     * Returns true if headline, description, link and eventType of both MediaEntryTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The MediaEntryTO to be compared with this object.
     * @return True if headline, description, link and eventType match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MediaEntryTO that = (MediaEntryTO) o;
        return Objects.equals(headline, that.headline) &&
                Objects.equals(description, that.description) &&
                Objects.equals(link, that.link) &&
                Objects.equals(eventDate, that.eventDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(headline, description, link, eventDate);
    }
}
