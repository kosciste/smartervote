package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.OneToMany;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;

/**
 * Represents the Party table.
 *
 * @author Stefan Teodoropol
 */
@Entity
public class Party extends BaseEntity {

    @OneToMany(mappedBy = "party")
    private Set<Politician> politicians;

    @Column(name = "name", nullable = false)
    private String name;

    public Set<Politician> getPoliticians() {
        if (politicians == null) return new HashSet<>();
        return politicians;
    }

    public String getName() {
        return name;
    }

    public void setPoliticians(Set<Politician> politicians) {
        this.politicians = politicians;
    }

    public void setName(String name) {
        this.name = name;
    }

}
