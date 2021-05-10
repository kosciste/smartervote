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
     * Adds a question to the politicians profile.
     *
     * @param politicianId the id of the politician
     * @param questionText the question text to be added to the politicians profile
     * @return true if the question was added, false otherwise
     * @throws DomainException in case of any issues e.g. politician id does not exist
     */
    boolean addQuestion(UUID politicianId, String questionText) throws DomainException;

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
