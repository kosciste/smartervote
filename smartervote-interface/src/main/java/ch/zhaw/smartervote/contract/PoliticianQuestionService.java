package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;

import java.util.UUID;

/**
 * This interface defines the methods to ask questions to politicians and upvoting these questions.
 * @author krebsrap
 */
public interface PoliticianQuestionService {

    /**
     * Adds a question to the politicians profile.
     * @param politicianId The id of the politician.
     * @param question The question to be added to the politicians profile.
     * @return True if the question was added, false otherwise.
     */
    boolean addQuestion(UUID politicianId, QuestionTO question);

    /**
     * Upvotes a specific question.
     * @param questionId The UUID of the question to be upvoted.
     * @param ipAddress The ip address of the user that upvoted the question.
     * @return True if the question was upvoted, false otherwise.
     */
    boolean upvoteQuestion(UUID questionId, String ipAddress);
}
