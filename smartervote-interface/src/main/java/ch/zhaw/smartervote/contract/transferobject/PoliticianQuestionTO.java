package ch.zhaw.smartervote.contract.transferobject;

import java.util.UUID;

public class PoliticianQuestionTO {
    private UUID id;
    private String text;
    private int upvotes;
    private PoliticianAnswerTO answer;

    public PoliticianQuestionTO(UUID id, String text, int upvotes) {
        this.id = id;
        this.text = text;
        this.upvotes = upvotes;
    }

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

    public PoliticianAnswerTO getAnswer() {
        return answer;
    }

    public void setAnswer(PoliticianAnswerTO answer) {
        this.answer = answer;
    }
}
