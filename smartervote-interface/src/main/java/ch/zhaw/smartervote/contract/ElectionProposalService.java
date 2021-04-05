package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;

import java.util.*;

public class ElectionProposalService {

    public List<ElectionTO> getAvailableElections() {
        return new ArrayList<>();
    }

    public List<SubjectTO> getQuestionSubjects(UUID electionsId) {
        return new ArrayList<>();
    }

    public Map<SubjectTO, List<QuestionTO>> getQuestionCatalogue(UUID electionId, Map<UUID, Integer> selection) {
        return new HashMap<>();
    }

    public UUID calculateElectionProposal(UUID electionId, List<QuestionTO> questions) {
        return UUID.randomUUID();
    }
}
