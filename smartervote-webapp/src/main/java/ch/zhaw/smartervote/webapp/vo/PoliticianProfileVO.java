package ch.zhaw.smartervote.webapp.vo;

import java.util.List;
import java.util.Objects;
import java.util.UUID;

/**
 * This class represents a separate PoliticianProfile-Object for the view.
 *
 * @author Stefan Teodoropol
 */
public class PoliticianProfileVO {

    /**
     * The value is no match score was calculated
     */
    public static final int DEFAULT_MATCH = -1;

    /**
     * The UUID of the politician.
     */
    private UUID id;

    /**
     * The url of the politicians image.
     */
    private String imageUrl;

    /**
     * The name of the politician.
     */
    private String name;

    /**
     * The party the politician represents.
     */
    private String party;

    /**
     * The birth year of the politician.
     */
    private int birthYear;

    /**
     * How good the politicians answers match the answer of the user. The match represents a percentage value from 0 to
     * 100. Unknown match value is DEFAULT_MATCH.
     */
    private int match = DEFAULT_MATCH;

    /**
     * The media entries that mention the politician.
     */
    private List<MediaEntryVO> mediaEntries;

    /**
     * The Questions posed to this politician.
     */
    private List<PersonalQuestionVO> questions;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParty() {
        return party;
    }

    public void setParty(String party) {
        this.party = party;
    }

    public int getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(int birthYear) {
        this.birthYear = birthYear;
    }

    public int getMatch() {
        return match;
    }

    public void setMatch(int match) {
        this.match = match;
    }


    public List<MediaEntryVO> getMediaEntries() {
        return mediaEntries;
    }

    public void setMediaEntries(List<MediaEntryVO> mediaEntries) {
        this.mediaEntries = mediaEntries;
    }

    public List<PersonalQuestionVO> getQuestions() {
        return questions;
    }

    public void setQuestions(List<PersonalQuestionVO> questions) {
        this.questions = questions;
    }


    /**
     * {@inheritDoc}
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PoliticianProfileVO that = (PoliticianProfileVO) o;
        return Objects.equals(id, that.id);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

}
