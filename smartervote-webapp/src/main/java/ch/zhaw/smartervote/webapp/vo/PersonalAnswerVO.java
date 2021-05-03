package ch.zhaw.smartervote.webapp.vo;

/**
 * This class represents the answer of a politician for the view.
 *
 * @author Stefan Teodoropol
 */
public class PersonalAnswerVO {

    /**
     * The answer of the politician.
     */
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

}
