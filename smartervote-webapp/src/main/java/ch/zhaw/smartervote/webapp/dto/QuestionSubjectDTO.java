package ch.zhaw.smartervote.webapp.dto;

import ch.zhaw.smartervote.contract.SubjectWeight;

import java.util.List;
import java.util.UUID;

/**
 * Class to store the selected weight for the question subject from the view.
 *
 * @author Stefan Koscica
 */
public class QuestionSubjectDTO {

    /**
     * Default weight that is preselected.
     */
    public static final String DEFAULT_WEIGHT = "0";

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
    private String weight = DEFAULT_WEIGHT;

    /**
     * Questions that are attached to this question subject.
     */
    private List<QuestionDTO> questionDTOS;

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

    public List<QuestionDTO> getQuestionDTOS() {
        return questionDTOS;
    }

    public void setQuestionDTOS(List<QuestionDTO> questionDTOS) {
        this.questionDTOS = questionDTOS;
    }

}
