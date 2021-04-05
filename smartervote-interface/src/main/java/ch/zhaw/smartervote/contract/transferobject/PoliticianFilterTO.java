package ch.zhaw.smartervote.contract.transferobject;

public class PoliticianFilterTO {
    private String party;
    private String gender;
    private int ageFrom;
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
