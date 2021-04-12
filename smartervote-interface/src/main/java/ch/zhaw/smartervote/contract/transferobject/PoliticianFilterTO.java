package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;

/**
 * This class represents a filter by which politicians can be filtered.
 *
 * @author Raphael Krebs
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

}
