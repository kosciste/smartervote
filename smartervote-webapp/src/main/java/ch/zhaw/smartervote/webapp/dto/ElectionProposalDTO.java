package ch.zhaw.smartervote.webapp.dto;

import ch.zhaw.smartervote.webapp.vo.SubjectVO;

import java.util.List;
import java.util.UUID;

/**
 * This class represents a DataTransferObject for the election. It is used to bind the forms to the specified objects in
 * order to retrieve the data.
 *
 * @author Stefan Koscica
 */
public class ElectionProposalDTO {

    /**
     * Election id for which the election is currently done.
     */
    private UUID electionId;

    /**
     * Subject with their set weight.
     */
    private List<SubjectVO> subjectVOS;

    public void addSubject(SubjectVO subjectVO) {
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

}