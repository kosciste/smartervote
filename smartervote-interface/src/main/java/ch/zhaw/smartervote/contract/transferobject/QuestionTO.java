package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents a question of the questionnaire. It also contains the answer of the user.
 *
 * @author Raphael Krebs
 */
public class QuestionTO {
    /**
     * The UUID of this question.
     */
    private final UUID id;
    /**
     * The question in text form.
     */
    private final String text;
    /**
     * The answer of the user to the question.
     */
    private int answer;

    public QuestionTO(UUID uuid, String text) {
        this.id = uuid;
        this.text = text;
        this.answer = -1;
    }

    public UUID getId() {
        return id;
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
     * {@inheritDoc}
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        QuestionTO that = (QuestionTO) o;
        return Objects.equals(id, that.id);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
