package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents a question that was posed to a politician,
 * as well as the answer of the politician if available.
 * @author krebsrap
 */
public class PoliticianQuestionTO {
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
    private final PoliticianAnswerTO answer;

    public PoliticianQuestionTO(UUID id, String text, int upvotes, PoliticianAnswerTO answer) {
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

    public PoliticianAnswerTO getAnswer() {
        return answer;
    }

    /**
     * Compares the given PoliticianQuestionTO object to this object.
     * Returns true if all the data fields of the PoliticianQuestionTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The PoliticianQuestionTO to be compared with this object.
     * @return True all data fields of both PoliticianQuestionTO objects match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PoliticianQuestionTO that = (PoliticianQuestionTO) o;
        return upvotes == that.upvotes &&
                Objects.equals(id, that.id) &&
                Objects.equals(text, that.text) &&
                Objects.equals(answer, that.answer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, text, upvotes, answer);
    }
}
