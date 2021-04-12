package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents the subject of the questionnaire. Each question in the questionnaire belongs to a subject.
 *
 * @author Raphael Krebs
 */
public class SubjectTO {
    /**
     * The UUID of the subject.
     */
    private final UUID id;
    /**
     * The name of the subject.
     */
    private final String name;
    /**
     * The weight of the subject.
     */
    private int weight;

    public SubjectTO(UUID id, String name, int weight) {
        this.id = id;
        this.name = name;
        this.weight = weight;
    }

    public UUID getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SubjectTO subjectTO = (SubjectTO) o;
        return Objects.equals(id, subjectTO.id);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
