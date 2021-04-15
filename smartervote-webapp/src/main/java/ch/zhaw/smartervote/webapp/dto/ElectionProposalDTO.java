package ch.zhaw.smartervote.webapp.dto;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.webapp.vo.QuestionVO;
import ch.zhaw.smartervote.webapp.vo.SubjectVO;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class ElectionProposalDTO {

    private UUID electionId;

    private List<SubjectVO> subjectVOS;

    private List<QuestionVO> questionVOS;


    public void addSubject(SubjectVO subjectVO){
        this.subjectVOS.add(subjectVO);
    }

    public List<SubjectVO> getSubjectVOS() {
        return subjectVOS;
    }

    public void setSubjectVOS(List<SubjectVO> subjectVOS) {
        this.subjectVOS = subjectVOS;
    }

    public void setElectionId(UUID electionId) {
        this.electionId = electionId;
    }

    public UUID getElectionId() {
        return electionId;
    }

    public void setQuestionVOS(List<QuestionVO> questionVOS) {
        this.questionVOS = questionVOS;
    }

    public List<QuestionVO> getQuestionVOS() {
        return questionVOS;
    }


}
