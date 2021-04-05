package ch.zhaw.smartervote.contract.transferobject;

import java.util.List;

public class PoliticianProfileTO {
    private String profession;
    private String gender;
    private List<MediaEntryTO> mediaEntries;
    private List<PoliticianQuestionTO> questions;
    private PoliticianTO politician;

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

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public List<MediaEntryTO> getMediaEntries() {
        return mediaEntries;
    }

    public void setMediaEntries(List<MediaEntryTO> mediaEntries) {
        this.mediaEntries = mediaEntries;
    }

    public List<PoliticianQuestionTO> getQuestions() {
        return questions;
    }

    public void setQuestions(List<PoliticianQuestionTO> questions) {
        this.questions = questions;
    }

    public PoliticianTO getPolitician() {
        return politician;
    }

    public void setPolitician(PoliticianTO politician) {
        this.politician = politician;
    }
}
