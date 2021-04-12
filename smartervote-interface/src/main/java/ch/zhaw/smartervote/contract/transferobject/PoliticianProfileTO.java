package ch.zhaw.smartervote.contract.transferobject;

import java.util.List;
import java.util.UUID;

/**
 * This class represents the profile of a politician.
 *
 * @author Raphael Krebs
 */
public class PoliticianProfileTO extends PoliticianTO {

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

    public PoliticianProfileTO(UUID id,
                               String imageUrl,
                               String name,
                               String party,
                               int birthYear,
                               int match,
                               String profession,
                               String gender,
                               List<MediaEntryTO> mediaEntries,
                               List<PoliticianQuestionTO> questions,
                               PoliticianTO politician) {
        super(id, imageUrl, name, party, birthYear, match);
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

}
