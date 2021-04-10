package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents an election, for which a questionnaire can be answered by the user.
 * @author krebsrap
 */
public class ElectionTO {
    /**
     * The UUID of the election.
     */
    private UUID id;
    /**
     * The name of the election.
     */
    private String name;

    public ElectionTO(UUID id, String name) {
        this.id = id;
        this.name = name;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * Compares the given ElectionTO object to this object.
     * Returns true if UUID and name of both ElectionTO objects are equal to each other.
     * Returns false otherwise.
     * @param o The ElectionTO to be compared with this object.
     * @return True if UUID and name match, false otherwise.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ElectionTO that = (ElectionTO) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }
}

