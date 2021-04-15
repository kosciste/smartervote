package ch.zhaw.smartervote.webapp.vo;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class Converter {

    public static List<SubjectVO> convertToSubjectVO(Set<SubjectTO> subjectTOs) {
        List<SubjectVO> subjectVOs = new ArrayList<>();
        for (SubjectTO subjectTO : subjectTOs) {
            SubjectVO subjectVO = new SubjectVO();
            subjectVO.setId(subjectTO.getId());
            subjectVO.setName(subjectTO.getName());
            subjectVOs.add(subjectVO);
        }

        return subjectVOs;
    }

    public static Set<SubjectTO> convertToSubjectTO(List<SubjectVO> subjectVOs) {
        Set<SubjectTO> subjectTOS = new HashSet<>();
        for (SubjectVO subjectVO : subjectVOs) {
            subjectTOS.add(convertToSubjectTO(subjectVO));
        }

        return subjectTOS;
    }

    public static SubjectTO convertToSubjectTO(SubjectVO subjectVO) {
        return new SubjectTO(subjectVO.getId(), subjectVO.getName(), subjectVO.getWeightAsEnum());
    }

    public static List<QuestionVO> convertToQuestionVO(Set<QuestionTO> questionTOS) {
        List<QuestionVO> questionVOS = new ArrayList<>();
        for (QuestionTO questionTO : questionTOS) {
            QuestionVO questionVO = new QuestionVO();
            questionVO.setId(questionTO.getId());
            questionVO.setText(questionTO.getText());
            questionVOS.add(questionVO);
        }

        return questionVOS;
    }

    public static Set<QuestionTO> convertToQuestionTO(List<QuestionVO> questionVOS) {
        Set<QuestionTO> questionTOS = new HashSet<>();
        for (QuestionVO questionVO : questionVOS) {
            QuestionTO questionTO = new QuestionTO(questionVO.getId(), questionVO.getText());
            questionTO.setAnswer(Integer.parseInt(questionVO.getAnswer()));
            questionTOS.add(questionTO);
        }

        return questionTOS;
    }

}
