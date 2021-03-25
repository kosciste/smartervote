package ch.zhaw.smartervote.persistency.entities;

import java.util.UUID;

@Entity
public class PersonalQuestion extends BaseEntity {

    @Column(name="politician_id")
    private UUID politicianId;

    @Column(name="title")
    private String title;

    @Column(name="description")
    private String description;

    @Column(name="upvotes")
    private long upvotes;

    public UUID getPoliticianId() {
        return politicianId;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public long getUpvotes() {
        return upvotes;
    }

    public void setPoliticianId(UUID politicianId) {
        this.politicianId = politicianId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setUpvotes(long upvotes) {
        this.upvotes = upvotes;
    }

}
