package ch.zhaw.smartervote.contract.transferobject;

import java.util.UUID;

public class QuestionTO {
    private UUID uuid;
    private String text;
    private int answer;

    public QuestionTO(UUID uuid, String text, int answer) {
        this.uuid = uuid;
        this.text = text;
        this.answer = answer;
    }

    public UUID getUuid() {
        return uuid;
    }

    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getAnswer() {
        return answer;
    }

    public void setAnswer(int answer) {
        this.answer = answer;
    }
}
