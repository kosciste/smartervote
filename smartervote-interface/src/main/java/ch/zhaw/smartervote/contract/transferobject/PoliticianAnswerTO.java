package ch.zhaw.smartervote.contract.transferobject;

public class PoliticianAnswerTO {
    private String text;

    public PoliticianAnswerTO(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
