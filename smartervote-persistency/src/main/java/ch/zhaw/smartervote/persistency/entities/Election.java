package ch.zhaw.smartervote.persistency.entities;

@Entity
public class Election extends BaseEntity {

    @Column(name="name")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
