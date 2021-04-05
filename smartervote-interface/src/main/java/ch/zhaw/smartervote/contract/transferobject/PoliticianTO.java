package ch.zhaw.smartervote.contract.transferobject;

import java.util.UUID;

public class PoliticianTO {
    private UUID id;
    private String imageUrl;
    private String name;
    private String party;
    private int birthYear;
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
}
