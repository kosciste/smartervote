package ch.zhaw.smartervote.contract.transferobject;

/**
 * This class represents the answer of a politician, to a question posed by a user.
 *
 * @author Raphael Krebs
 */
public class PersonalAnswerTO {

    /**
     * The answer of the politician.
     */
    private final String text;

    public PersonalAnswerTO(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }

}
