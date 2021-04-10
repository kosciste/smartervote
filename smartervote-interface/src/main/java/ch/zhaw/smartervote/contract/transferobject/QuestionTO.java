package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents a question of the questionnaire. It also contains the answer of the user.
 * @author krebsrap
 */
public class QuestionTO {
    /**
     * The UUID of this question.
     */
    private final UUID uuid;
    /**
     * The question in text form.
     */
    private final String text;
    /**
     * The answer of the user to the question.
     */
    private int answer;

    public QuestionTO(UUID uuid, String text) {
        this.uuid = uuid;
        this.text = text;
        this.answer = -1;
    }

    public UUID getUuid() {
        return uuid;
    }

    public String getText() {
        return text;
    }

    public int getAnswer() {
        return answer;
    }

    public void setAnswer(int answer) {
        this.answer = answer;
    }

    /**
     * Compares the given QuestionTO object to this object.
     * Returns true if all the data fields of the QuestionTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The QuestionTO to be compared with this object.
     * @return True all data fields of both QuestionTO objects match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        QuestionTO that = (QuestionTO) o;
        return Objects.equals(uuid, that.uuid) &&
                Objects.equals(answer, that.answer) &&
                Objects.equals(text, that.text);
    }

    @Override
    public int hashCode() {
        return Objects.hash(uuid, text);
    }
}
