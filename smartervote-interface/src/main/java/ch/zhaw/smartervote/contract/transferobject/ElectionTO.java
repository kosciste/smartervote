package ch.zhaw.smartervote.contract.transferobject;

import java.util.Objects;
import java.util.UUID;

/**
 * This class represents an election, for which a questionnaire can be answered by the user.
 *
 * @author Raphael Krebs
 */
public class ElectionTO {

    /**
     * The UUID of the election.
     */
    private final UUID id;

    /**
     * The name of the election.
     */
    private final String name;

    public ElectionTO(UUID id, String name) {
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
     * {@inheritDoc}
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ElectionTO that = (ElectionTO) o;
        return Objects.equals(id, that.id);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

}

