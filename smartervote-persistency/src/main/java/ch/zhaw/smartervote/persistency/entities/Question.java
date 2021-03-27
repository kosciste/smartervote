package ch.zhaw.smartervote.persistency.entities;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.NamedQuery;

@Entity
@NamedQuery(
        name="Question.findByText",
        query="SELECT q FROM Question q where q.text like :text"
)
public class Question extends BaseEntity {

    @Column(name="text")
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

}
