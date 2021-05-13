package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents a politician.
 *
 * @author Raphael Krebs
 */
public class PoliticianTO {

    /**
     * The matching score set if no matching score is passed in the constructor.
     */
    public static final int DEFAULT_MATCH = 0;

    /**
     * The UUUID of the politician.
     */
    private final UUID id;

    /**
     * The url of the politicians image.
     */
    private final String imageUrl;

    /**
     * The name of the politician.
     */
    private final String name;

    /**
     * The party the politician represents.
     */
    private final String party;

    /**
     * The birth year of the politician.
     */
    private final int birthYear;

    /**
     * How good the politicians answers match the answer of the user. The match represents a percentage value from 0 to
     * 100.
     */
    private final int match;

    public PoliticianTO(UUID id, String imageUrl, String name, String party, int birthYear) {
        this.id = id;
        this.imageUrl = imageUrl;
        this.name = name;
        this.party = party;
        this.birthYear = birthYear;
        this.match = DEFAULT_MATCH;
    }

    public PoliticianTO(UUID id, String imageUrl, String name, String party, int birthYear, int match) {
        this.id = id;
        this.imageUrl = imageUrl;
        this.name = name;
        this.party = party;
        this.birthYear = birthYear;
        this.match = match;
    }

    public UUID getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public String getName() {
        return name;
    }

    public String getParty() {
        return party;
    }

    public int getBirthYear() {
        return birthYear;
    }

    public int getMatch() {
        return match;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PoliticianTO that = (PoliticianTO) o;
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
