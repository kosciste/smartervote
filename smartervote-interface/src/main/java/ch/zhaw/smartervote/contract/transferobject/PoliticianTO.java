package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents a politician.
 * @author krebsrap
 */
public class PoliticianTO {
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
     * How good the politicians answers match the answer of the user.
     * The match represents a percentage value from 0 to 100.
     */
    private int match;

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

    public void setMatch(int match) {
        this.match = match;
    }

    /**
     * Compares the given PoliticianTO object to this object.
     * Returns true if all the data fields of the PoliticianTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The PoliticianTO to be compared with this object.
     * @return True all data fields of both PoliticianTO objects match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PoliticianTO that = (PoliticianTO) o;
        return birthYear == that.birthYear &&
                Objects.equals(id, that.id) &&
                Objects.equals(imageUrl, that.imageUrl) &&
                Objects.equals(name, that.name) &&
                Objects.equals(match, that.match) &&
                Objects.equals(party, that.party);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, imageUrl, name, party, birthYear, match);
    }
}
