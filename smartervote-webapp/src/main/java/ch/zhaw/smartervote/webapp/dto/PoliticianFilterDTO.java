package ch.zhaw.smartervote.webapp.dto;

import ch.zhaw.smartervote.contract.PoliticianService;

/**
 * Class that is used to store the entered values in the politician filter.
 *
 * @author Stefan Koscica
 */
public class PoliticianFilterDTO {

    /**
     * Default value for age from field.
     */
    private final static String AGE_FROM = "18";

    /**
     * Default value for the age to field.
     */
    private final static String AGE_TO = "90";

    /**
     * The party that should be displayed.
     */
    private String party = PoliticianService.DEFAULT_FILTER;

    /**
     * The gender that should be displayed.
     */
    private String gender = PoliticianService.DEFAULT_FILTER;

    /**
     * The minimum age of the politicians that should be displayed.
     */
    private String ageFrom = AGE_FROM;

    /**
     * The maximum age of the politicians that should be displayed.
     */
    private String ageTo = AGE_TO;

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

    public String getAgeFrom() {
        return ageFrom;
    }

    public void setAgeFrom(String ageFrom) {
        this.ageFrom = ageFrom;
    }

    public String getAgeTo() {
        return ageTo;
    }

    public void setAgeTo(String ageTo) {
        this.ageTo = ageTo;
    }

}
