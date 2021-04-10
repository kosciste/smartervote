package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;

/**
 * This class represents a filter by which politicians can be filtered.
 * @author krebsrap
 */
public class PoliticianFilterTO {
    /**
     * The party that should be displayed.
     */
    private String party;
    /**
     * The gender that should be displayed.
     */
    private String gender;
    /**
     * The minimum age of the politicians that should be displayed.
     */
    private int ageFrom;
    /**
     * The maximum age of the politicians that should be displayed.
     */
    private int ageTo;

    public PoliticianFilterTO(String party, String gender, int ageFrom, int ageTo) {
        this.party = party;
        this.gender = gender;
        this.ageFrom = ageFrom;
        this.ageTo = ageTo;
    }

    public String getParty() {
        return party;
    }

    public void setParty(String party) {
        this.party = party;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAgeFrom() {
        return ageFrom;
    }

    public void setAgeFrom(int ageFrom) {
        this.ageFrom = ageFrom;
    }

    public int getAgeTo() {
        return ageTo;
    }

    public void setAgeTo(int ageTo) {
        this.ageTo = ageTo;
    }

    /**
     * Compares the given PoliticianFilterTO object to this object.
     * Returns true if all the data fields of the PoliticianFilterTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The PoliticianFilterTO to be compared with this object.
     * @return True all data fields of both PoliticianFilterTO objects match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PoliticianFilterTO that = (PoliticianFilterTO) o;
        return ageFrom == that.ageFrom &&
                ageTo == that.ageTo &&
                Objects.equals(party, that.party) &&
                Objects.equals(gender, that.gender);
    }

    @Override
    public int hashCode() {
        return Objects.hash(party, gender, ageFrom, ageTo);
    }
}
