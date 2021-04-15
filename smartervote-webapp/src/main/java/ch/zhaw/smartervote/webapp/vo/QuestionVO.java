package ch.zhaw.smartervote.webapp.vo;

import java.util.UUID;

/**
 *
 * This class represents a separate Question-Object for the view.
 *
 * @author stefankoscica
 */

public class QuestionVO {

    /**
     * The UUID of this question.
     */
    private UUID id;

    /**
     * The question in text form.
     */
    private String text;

    /**
     * The answer of the user to the question.
     */
    private String answer;

    public void setId(UUID id) {
        this.id = id;
    }

    public UUID getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "QuestionVO{" +
                "id=" + id +
                ", answer='" + answer + '\'' +
                '}';
    }

}
