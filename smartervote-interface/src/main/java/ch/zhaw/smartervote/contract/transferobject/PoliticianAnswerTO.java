package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;

public class PoliticianAnswerTO {
    /**
     * The answer of the politician.
     */
    private final String text;

    public PoliticianAnswerTO(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }

    /**
     * Compares the given PoliticianAnswerTO object to this object.
     * Returns true if the text of both PoliticianAnswerTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The PoliticianAnswerTO to be compared with this object.
     * @return True if the text of both PoliticianAnswerTO object matches, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PoliticianAnswerTO that = (PoliticianAnswerTO) o;
        return Objects.equals(text, that.text);
    }

    @Override
    public int hashCode() {
        return Objects.hash(text);
    }
}
