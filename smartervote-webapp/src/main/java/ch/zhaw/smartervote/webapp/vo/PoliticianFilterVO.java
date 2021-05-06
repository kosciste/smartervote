package ch.zhaw.smartervote.webapp.vo;

import java.util.UUID;

public class PoliticianFilterVO {
    private final static String AGE_FROM = "18";
    private final static String AGE_TO = "90";

    private UUID resultUUID;

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

    public UUID getResultUUID() {
        return resultUUID;
    }

    public void setResultUUID (UUID result) {
        this.resultUUID = result;
    }

}
