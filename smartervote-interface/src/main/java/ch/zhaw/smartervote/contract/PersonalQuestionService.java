package ch.zhaw.smartervote.contract;

import java.util.UUID;

/**
 * This interface defines the methods to ask questions to politicians and upvoting these questions.
 *
 * @author Raphael Krebs
 */
public interface PersonalQuestionService {

    /**
     * Constant which defines the max length of a question that can be used by clients to validate the question length.
     */
    int MAX_QUESTION_LENGTH = 255;

    /**
     * Error messages for the implementations to use.
     */
    String INVALID_INPUT = "Invalid input.";
    String POLITICIAN_NOT_FOUND = "Politician not found.";
    String PERSONAL_QUESTION_NOT_FOUND = "Personal question not found.";
    String ALREADY_UPVOTED = "Question was already upvoted by given ip address.";
    String UPVOTE_FAILED = "Upvote failed.";

    /**
     * Adds a question to the politicians profile.
     *
     * @param politicianId the id of the politician
     * @param questionText the question text to be added to the politicians profile
     * @throws DomainException in case of any issues e.g. politician id does not exist
     */
    void addQuestion(UUID politicianId, String questionText) throws DomainException;

    /**
     * Upvotes a specific question.
     *
     * @param questionId the UUID of the personal question to be upvoted
     * @param ipAddress the ip address of the user that upvoted the question
     * @return new amount of upvotes
     * @throws DomainException in case of any issues e.g. question id does not exist
     */
    long upvoteQuestion(UUID questionId, String ipAddress) throws DomainException;

}
