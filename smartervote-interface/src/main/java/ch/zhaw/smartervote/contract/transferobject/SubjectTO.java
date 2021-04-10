package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents the subject of the questionnaire. Each question in the questionnaire belongs to a subject.
 * @author krebsrap
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

    public SubjectTO(UUID id, String name) {
        this.id = id;
        this.name = name;
    }

    public UUID getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    /**
     * Compares the given SubjectTO object to this object.
     * Returns true if all the data fields of the SubjectTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The SubjectTO to be compared with this object.
     * @return True all data fields of both SubjectTO objects match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SubjectTO subjectTO = (SubjectTO) o;
        return Objects.equals(id, subjectTO.id) && Objects.equals(name, subjectTO.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }
}
