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
    private int upvotes;

    /**
     * The politicians answer to the question.
     */
    private final PersonalAnswerTO answer;
    
    public PersonalQuestionTO(UUID id, String text, int upvotes, PersonalAnswerTO answer) {
        this.id = id;
        this.text = text;
        this.upvotes = upvotes;
        this.answer = answer;
    }

    public UUID getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public int getUpvotes() {
        return upvotes;
    }

    public void setUpvotes(int upvotes) {
        this.upvotes = upvotes;
    }

    public PersonalAnswerTO getAnswer() {
        return answer;
    }

}
