package ch.zhaw.smartervote.webapp.dto;

import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;

import java.util.ArrayList;
import java.util.List;

/**
 * This class represents a static converter class used for convenient converting between view objects and
 * transfer objects where required.
 *
 * @author Stefan Koscica
 */
public final class Converter {

    /**
     * Converts {@link SubjectTO} list to {@link QuestionSubjectDTO} list.
     *
     * @param subjectTOs to convert
     * @return converted objects
     */
    public static List<QuestionSubjectDTO> convertToSubjectVO(List<SubjectTO> subjectTOs) {
        List<QuestionSubjectDTO> questionSubjectDTOS = new ArrayList<>();
        for (SubjectTO subjectTO : subjectTOs) {
            QuestionSubjectDTO questionSubjectDTO = new QuestionSubjectDTO();
            questionSubjectDTO.setId(subjectTO.getId());
            questionSubjectDTO.setName(subjectTO.getName());
            questionSubjectDTOS.add(questionSubjectDTO);
        }
        return questionSubjectDTOS;
    }

    /**
     * Converts {@link QuestionSubjectDTO} list to {@link SubjectTO} list.
     *
     * @param questionSubjectDTOS to convert
     * @return converted objects
     */
    public static List<SubjectTO> convertToSubjectTO(List<QuestionSubjectDTO> questionSubjectDTOS) {
        List<SubjectTO> subjectTOS = new ArrayList<>();
        for (QuestionSubjectDTO questionSubjectDTO : questionSubjectDTOS) {
            subjectTOS.add(convertToSubjectTO(questionSubjectDTO));
        }
        return subjectTOS;
    }

    /**
     * Converts a single {@link SubjectTO} to a {@link QuestionSubjectDTO} object.
     *
     * @param questionSubjectDTO to convert
     * @return converted object
     */
    public static SubjectTO convertToSubjectTO(QuestionSubjectDTO questionSubjectDTO) {
        return new SubjectTO(questionSubjectDTO.getId(), questionSubjectDTO.getName(), questionSubjectDTO.getWeightAsEnum());
    }

    /**
     * Converts {@link QuestionTO} list to {@link QuestionDTO} list.
     *
     * @param questionTOS to convert
     * @return converted objects
     */
    public static List<QuestionDTO> convertToQuestionVO(List<QuestionTO> questionTOS) {
        List<QuestionDTO> questionDTOS = new ArrayList<>();
        for (QuestionTO questionTO : questionTOS) {
            QuestionDTO questionDTO = new QuestionDTO();
            questionDTO.setId(questionTO.getId());
            questionDTO.setText(questionTO.getText());
            questionDTOS.add(questionDTO);
        }
        return questionDTOS;
    }

    /**
     * Converts {@link QuestionDTO} list to {@link QuestionTO} list.
     *
     * @param questionDTOS to convert
     * @return converted objects
     */
    public static List<QuestionTO> convertToQuestionTO(List<QuestionDTO> questionDTOS) {
        List<QuestionTO> questionTOS = new ArrayList<>();
        for (QuestionDTO questionDTO : questionDTOS) {
            QuestionTO questionTO = new QuestionTO(questionDTO.getId(), questionDTO.getText());
            questionTO.setAnswer(Integer.parseInt(questionDTO.getAnswer()));
            questionTOS.add(questionTO);
        }
        return questionTOS;
    }

    /**
     * Converts a {@link PoliticianFilterDTO} object to {@link PoliticianFilterTO} object.
     *
     * @param politicianFilterVO to convert
     * @return converted objects
     */
    public static PoliticianFilterTO convertToPoliticianFilterTO(PoliticianFilterDTO politicianFilterVO){
        return new PoliticianFilterTO(
                politicianFilterVO.getParty(),
                politicianFilterVO.getGender(),
                Integer.parseInt(politicianFilterVO.getAgeFrom()),
                Integer.parseInt(politicianFilterVO.getAgeTo()));
    }

}
