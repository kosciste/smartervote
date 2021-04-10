package ch.zhaw.smartervote.contract.transferobject;

import java.util.List;
import java.util.Objects;

/**
 * This class represents the profile of a politician.
 * @author krebsrap
 */
public class PoliticianProfileTO {
    /**
     * The politicians profession.
     */
    private final String profession;
    /**
     * The politicians gender.
     */
    private final String gender;
    /**
     * The media entries that mention the politician.
     */
    private final List<MediaEntryTO> mediaEntries;
    /**
     * The Questions posed to this politician.
     */
    private final List<PoliticianQuestionTO> questions;
    /**
     * The politician represented in this profile.
     */
    private final PoliticianTO politician;

    public PoliticianProfileTO(String profession,
                               String gender,
                               List<MediaEntryTO> mediaEntries,
                               List<PoliticianQuestionTO> questions,
                               PoliticianTO politician) {
        this.profession = profession;
        this.gender = gender;
        this.mediaEntries = mediaEntries;
        this.questions = questions;
        this.politician = politician;
    }

    public String getProfession() {
        return profession;
    }

    public String getGender() {
        return gender;
    }

    public List<MediaEntryTO> getMediaEntries() {
        return mediaEntries;
    }

    public List<PoliticianQuestionTO> getQuestions() {
        return questions;
    }

    public PoliticianTO getPolitician() {
        return politician;
    }

    /**
     * Compares the given PoliticianProfileTO object to this object.
     * Returns true if all the data fields of the PoliticianProfileTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The PoliticianProfileTO to be compared with this object.
     * @return True all data fields of both PoliticianProfileTO objects match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PoliticianProfileTO that = (PoliticianProfileTO) o;
        return Objects.equals(profession, that.profession) &&
                Objects.equals(gender, that.gender) &&
                Objects.equals(mediaEntries, that.mediaEntries) &&
                Objects.equals(questions, that.questions) &&
                Objects.equals(politician, that.politician);
    }

    @Override
    public int hashCode() {
        return Objects.hash(profession, gender, mediaEntries, questions, politician);
    }
}
