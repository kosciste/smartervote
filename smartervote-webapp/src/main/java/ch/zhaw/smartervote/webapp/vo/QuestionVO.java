package ch.zhaw.smartervote.webapp.vo;

import java.util.UUID;

/**
 * This class represents a separate Question-Object for the view.
 *
 * @author Stefan Koscica
 */
public class QuestionVO {

    /**
     * Default answer that is preselected.
     */
    public static final String DEFAULT_ANSWER = "2";

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
    private String answer = DEFAULT_ANSWER;

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

}
