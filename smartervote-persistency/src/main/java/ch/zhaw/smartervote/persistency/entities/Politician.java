package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.*;

import java.util.HashSet;
import java.util.Set;

/**
 * Represents the Politician table.
 *
 * @author Stefan Teodoropol
 */
@Entity
public class Politician extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "party_id", nullable = false)
    private Party party;

    @OneToMany(mappedBy = "politician")
    private Set<QuestionAnswer> questionAnswers;

    @OneToMany(mappedBy = "politician")
    private Set<PersonalQuestion> personalQuestions;

    @OneToMany(mappedBy = "politician")
    private Set<MediaCoverage> mediaCoverage;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "birthyear", nullable = false)
    private int birthyear;

    @Column(name = "gender", nullable = false)
    @Enumerated(EnumType.STRING)
    private Gender gender;

    @Column(name = "profession", nullable = false)
    private String profession;

    @Column(name = "picture")
    private String picture;

    public Party getParty() {
        return party;
    }

    public Set<QuestionAnswer> getQuestionAnswers() {
        if (questionAnswers == null) return new HashSet<>();
        return questionAnswers;
    }

    public Set<PersonalQuestion> getPersonalQuestions() {
        if (personalQuestions == null) return new HashSet<>();
        return personalQuestions;
    }

    public Set<MediaCoverage> getMediaCoverage() {
        if (mediaCoverage == null) return new HashSet<>();
        return mediaCoverage;
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

    public void setParty(Party party) {
        this.party = party;
    }

    public void setQuestionAnswers (Set<QuestionAnswer> questionAnswers) {
        this.questionAnswers = questionAnswers;
    }

    public void setPersonalQuestions (Set<PersonalQuestion> personalQuestions) {
        this.personalQuestions = personalQuestions;
    }

    public void setMediaCoverage (Set<MediaCoverage> mediaCoverage) {
        this.mediaCoverage = mediaCoverage;
    }


    public void setName(String name) {
        this.name = name;
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