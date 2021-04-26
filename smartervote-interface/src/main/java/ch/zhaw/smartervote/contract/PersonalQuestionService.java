package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PersonalQuestionTO;

import java.util.Optional;
import java.util.UUID;

/**
 * This interface defines the methods to ask questions to politicians and upvoting these questions.
 *
 * @author Raphael Krebs
 */
public interface PersonalQuestionService {

    /**
     * Gets a question by UUID.
     * 
     * @param politicianId The id of the politician.
     * @param questionId The id of the personal question.
     * @param question The question to be added to the politicians profile.
     * @return An optional containing the personal question if it exists, or empty otherwise.
     */
    Optional<PersonalQuestionTO> getQuestion(UUID politicianId, UUID questionId);

    /**
     * Adds a question to the politicians profile.
     *
     * @param politicianId The id of the politician.
     * @param questionText The question text to be added to the politicians profile.
     * @return True if the question was added, false otherwise.
     */
    boolean addQuestion(UUID politicianId, String questionText);

    /**
     * Upvotes a specific question.
     *
     * @param questionId the UUID of the personal question to be upvoted.
     * @param ipAddress the ip address of the user that upvoted the question.
     * @return true if the question was upvoted, false otherwise.
     */
    boolean upvoteQuestion(UUID questionId, String ipAddress);

}
