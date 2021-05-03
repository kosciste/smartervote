package ch.zhaw.smartervote.webapp.vo;

import java.util.UUID;

public class PersonalQuestionVO {

    /**
     * The UUID of this politician question.
     */
    private UUID id;

    /**
     * The Question in text form.
     */
    private String text;

    /**
     * The upvotes this politician question received.
     */
    private int upvotes;

    /**
     * The politicians answer to the question.
     */
    private PersonalAnswerVO answer;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getUpvotes() {
        return upvotes;
    }

    public void setUpvotes(int upvotes) {
        this.upvotes = upvotes;
    }

    public PersonalAnswerVO getAnswer() {
        return answer;
    }

    public void setAnswer(PersonalAnswerVO answer) {
        this.answer = answer;
    }

}
