package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;

import java.util.UUID;

public class PoliticianQuestionService {

    public boolean addQuestion(UUID politicianId, QuestionTO question) {
        return false;
    }

    public boolean upvoteQuestion(UUID questionId, String ipAddress) {
        return false;
    }
}
