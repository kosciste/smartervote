package ch.zhaw.smartervote.webapp.vo;

import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;

import java.util.ArrayList;
import java.util.List;

/**
 * This class represents a static Converter-Class used for convenient converting between View-Objects and
 * Transfer-Objects.
 *
 * @author Stefan Koscica
 */
public final class Converter {

    /**
     * Converts subject TOs to subject VOs.
     *
     * @param subjectTOs subjects to convert
     * @return converted subjects
     */
    public static List<SubjectVO> convertToSubjectVO(List<SubjectTO> subjectTOs) {
        List<SubjectVO> subjectVOs = new ArrayList<>();
        for (SubjectTO subjectTO : subjectTOs) {
            SubjectVO subjectVO = new SubjectVO();
            subjectVO.setId(subjectTO.getId());
            subjectVO.setName(subjectTO.getName());
            subjectVOs.add(subjectVO);
        }
        return subjectVOs;
    }

    /**
     * Converts subjects VOs to subject TOs.
     *
     * @param subjectVOs subjects to convert
     * @return converted subjects
     */
    public static List<SubjectTO> convertToSubjectTO(List<SubjectVO> subjectVOs) {
        List<SubjectTO> subjectTOS = new ArrayList<>();
        for (SubjectVO subjectVO : subjectVOs) {
            subjectTOS.add(convertToSubjectTO(subjectVO));
        }
        return subjectTOS;
    }

    /**
     * Converts a single subject TO to a subject VO.
     *
     * @param subjectVO subject to convert
     * @return converted subject
     */
    public static SubjectTO convertToSubjectTO(SubjectVO subjectVO) {
        return new SubjectTO(subjectVO.getId(), subjectVO.getName(), subjectVO.getWeightAsEnum());
    }

    /**
     * Converts question TOs to question VOs.
     *
     * @param questionTOS questions to convert
     * @return converted questions
     */
    public static List<QuestionVO> convertToQuestionVO(List<QuestionTO> questionTOS) {
        List<QuestionVO> questionVOS = new ArrayList<>();
        for (QuestionTO questionTO : questionTOS) {
            QuestionVO questionVO = new QuestionVO();
            questionVO.setId(questionTO.getId());
            questionVO.setText(questionTO.getText());
            questionVOS.add(questionVO);
        }
        return questionVOS;
    }

    /**
     * Converts question VOs to question TOs.
     *
     * @param questionVOS questions to convert
     * @return converted questions
     */
    public static List<QuestionTO> convertToQuestionTO(List<QuestionVO> questionVOS) {
        List<QuestionTO> questionTOS = new ArrayList<>();
        for (QuestionVO questionVO : questionVOS) {
            QuestionTO questionTO = new QuestionTO(questionVO.getId(), questionVO.getText());
            questionTO.setAnswer(Integer.parseInt(questionVO.getAnswer()));
            questionTOS.add(questionTO);
        }
        return questionTOS;
    }

    /**
     * Converts PoliticianFilterVO to PoliticianFilterTO.
     *
     * @param politicianFilterVO to convert
     * @return converted PoliticianFilterTO object
     */
    public static PoliticianFilterTO convertToPoliticianFilterTO(PoliticianFilterVO politicianFilterVO){
        return new PoliticianFilterTO(
                politicianFilterVO.getParty(),
                politicianFilterVO.getGender(),
                Integer.parseInt(politicianFilterVO.getAgeFrom()),
                Integer.parseInt(politicianFilterVO.getAgeTo()));
    }

}
