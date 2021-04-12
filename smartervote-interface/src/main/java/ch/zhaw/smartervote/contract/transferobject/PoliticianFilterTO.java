package ch.zhaw.smartervote.contract.transferobject;

/**
 * This class represents a filter by which politicians can be filtered.
 *
 * @author Raphael Krebs
 */
public class PoliticianFilterTO {

    /**
     * The party that should be displayed.
     */
    private final String party;

    /**
     * The gender that should be displayed.
     */
    private final String gender;

    /**
     * The minimum age of the politicians that should be displayed.
     */
    private final int ageFrom;

    /**
     * The maximum age of the politicians that should be displayed.
     */
    private final int ageTo;

    public PoliticianFilterTO(String party, String gender, int ageFrom, int ageTo) {
        this.party = party;
        this.gender = gender;
        this.ageFrom = ageFrom;
        this.ageTo = ageTo;
    }

    public String getParty() {
        return party;
    }

    public String getGender() {
        return gender;
    }

    public int getAgeFrom() {
        return ageFrom;
    }

    public int getAgeTo() {
        return ageTo;
    }

}
