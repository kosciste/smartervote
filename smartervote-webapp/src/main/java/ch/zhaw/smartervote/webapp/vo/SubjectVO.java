package ch.zhaw.smartervote.webapp.vo;

import ch.zhaw.smartervote.contract.SubjectWeight;

import java.util.List;
import java.util.UUID;

public class SubjectVO {
    /**
     * The UUID of the subject.
     */
    private String id;

    /**
     * The name of the subject.
     */
    private String name;

    /**
     * The weight of the subject.
     */
    private String weight;


    public SubjectVO(){}

    public SubjectVO(String id, String name, String weight) {
        this.id = id;
        this.name = name;
        this.weight = weight;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }



}
