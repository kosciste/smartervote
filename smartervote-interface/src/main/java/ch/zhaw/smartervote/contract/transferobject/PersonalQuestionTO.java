package ch.zhaw.smartervote.contract.transferobject;

import java.util.UUID;

/**
 * This class represents a question that was posed to a politician, as well as the answer of the politician if
 * available.
 *
 * @author Raphael Krebs
 */
public class PersonalQuestionTO {

    /**
     * The UUID of this politician question.
     */
    private final UUID id;

    /**
     * The Question in text form.
     */
    private final String text;

    /**
     * The upvotes this politician question received.
     */
    private final long upvotes;

    /**
     * Indicates if the user already upvoted the personal question.
     */
    private final boolean upvoted;

    /**
     * The politicians answer to the question.
     */
    private final PersonalAnswerTO answer;

    public PersonalQuestionTO(UUID id, String text, long upvotes, boolean upvoted, PersonalAnswerTO answer) {
        this.id = id;
        this.text = text;
        this.upvotes = upvotes;
        this.upvoted = upvoted;
        this.answer = answer;
    }

    public UUID getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public long getUpvotes() {
        return upvotes;
    }

    public PersonalAnswerTO getAnswer() {
        return answer;
    }

    public boolean isUpvoted() {
        return upvoted;
    }

}
