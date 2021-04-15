package ch.zhaw.smartervote.webapp.vo;

import java.util.UUID;

public class QuestionVO {
    private String subjectID;
    /**
     * The UUID of this question.
     */
    private String id;

    /**
     * The question in text form.
     */
    private String text;

    /**
     * The answer of the user to the question.
     */
    private String answer;

    public QuestionVO(){ }

    public QuestionVO(String subjectID, String uuid, String text, String answer) {
        this.id = uuid;
        this.text = text;
        this.answer = answer;
        this.subjectID = subjectID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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


    public String getSubjectID() {
        return subjectID;
    }

    public void setSubjectID(String subjectID) {
        this.subjectID = subjectID;
    }

}
