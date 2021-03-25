package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;
import java.util.UUID;

@Entity
public class Politician extends BaseEntity {

    @Column(name="party_id")
    private UUID partyId;

    @Column(name="name")
    private String name;

    @Column(name="birthyear")
    private int birthyear;

    @Column(name="gender")
    private Gender gender;

    @Column(name="profession")
    private String profession;

    @Column(name="picture")
    private String picture;

    public UUID getPartyId() {
        return partyId;
    }

    public String getName() {
        return name;
    }

    public int getBirthyear() {
        return birthyear;
    }

    public Gender getGender() {
        return gender;
    }

    public String getProfession() {
        return profession;
    }

    public String getPicture() {
        return picture;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPartyId(UUID partyId) {
        this.partyId = partyId;
    }

    public void setBirthyear(int birthyear) {
        this.birthyear = birthyear;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

}
