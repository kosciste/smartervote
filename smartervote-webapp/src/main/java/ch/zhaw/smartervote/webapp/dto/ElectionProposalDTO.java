package ch.zhaw.smartervote.webapp.dto;

import java.util.List;
import java.util.UUID;

/**
 * To create forms of dynamic size in thymeleaf, the template engine requires another wrapper class around the list of
 * objects for which the forms should be created - in our case for the question subject selection and the question
 * catalogue as we do not know how many elements are returned by the domain layer.
 *
 * @author Stefan Koscica
 */
public class ElectionProposalDTO {

    /**
     * Election id of the election for which the proposal is created.
     */
    private UUID electionId;

    /**
     * Question subjects with their set weight.
     */
    private List<QuestionSubjectDTO> questionSubjectDTOS;

    /**
     * Returns true if all question subjects have the default weight selected.
     *
     * @return true if only the default weight is selected
     */
    public boolean onlyDefaultWeightSelected() {
        for (QuestionSubjectDTO questionSubjectDTO : questionSubjectDTOS) {
            if (!QuestionSubjectDTO.DEFAULT_WEIGHT.equals(questionSubjectDTO.getWeight())) return false;
        }

        return true;
    }

    /**
     * Returns true if all questions have the default answer selected.
     *
     * @return true if only the default answer is selected
     */
    public boolean onlyDefaultAnswerSelected() {
        for (QuestionSubjectDTO questionSubjectDTO : questionSubjectDTOS) {
            for (QuestionDTO questionDTO : questionSubjectDTO.getQuestionDTOS()) {
                if (!QuestionDTO.DEFAULT_ANSWER.equals(questionDTO.getAnswer())) return false;
            }
        }

        return true;
    }

    public List<QuestionSubjectDTO> getQuestionSubjectDTOS() {
        return questionSubjectDTOS;
    }

    public void setQuestionSubjectDTOS(List<QuestionSubjectDTO> questionSubjectDTOS) {
        this.questionSubjectDTOS = questionSubjectDTOS;
    }

    public void setElectionId(UUID electionId) {
        this.electionId = electionId;
    }

    public UUID getElectionId() {
        return electionId;
    }

}
