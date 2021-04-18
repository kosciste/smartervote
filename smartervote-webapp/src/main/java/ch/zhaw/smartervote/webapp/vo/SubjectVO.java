package ch.zhaw.smartervote.webapp.vo;

import ch.zhaw.smartervote.contract.SubjectWeight;

import java.util.List;
import java.util.UUID;

/**
 * This class represents a separate Subject-Object for the view.
 *
 * @author Stefan Koscica
 */
public class SubjectVO {

    /**
     * The UUID of the subject.
     */
    private UUID id;

    /**
     * The name of the subject.
     */
    private String name;

    /**
     * The weight of the subject.
     */
    private String weight;

    private List<QuestionVO> questionVOS;

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

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public SubjectWeight getWeightAsEnum() {
        int weightInt = Integer.parseInt(weight);
        return SubjectWeight.values()[weightInt];
    }

    public void setQuestionVOS(List<QuestionVO> questionVOS) {
        this.questionVOS = questionVOS;
    }

    public List<QuestionVO> getQuestionVOS() {
        return questionVOS;
    }

}
