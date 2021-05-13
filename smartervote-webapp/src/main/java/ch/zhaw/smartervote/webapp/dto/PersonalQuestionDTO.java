package ch.zhaw.smartervote.webapp.dto;

/**
 * Contains the text entered in the form to create a new personal question.
 *
 * @author Stefan Teodoropol
 */
public class PersonalQuestionDTO {

    /**
     * Question text.
     */
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

}
