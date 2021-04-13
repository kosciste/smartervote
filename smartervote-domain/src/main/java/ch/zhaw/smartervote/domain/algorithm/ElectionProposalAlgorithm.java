package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class ElectionProposalAlgorithm {

    public static UUID calculate(UUID electionId, Map<SubjectTO, Set<QuestionTO>> questions) {
        ProposalResult proposalResult = new ProposalResult();
        proposalResult.prePersist();
        Set<ProposalResultScore> proposalResultScores = calculateResults(electionId, questions);
        proposalResult.setProposalResultScores(proposalResultScores);
        return proposalResult.getId();
    }

    private static Set<ProposalResultScore> calculateResults(
            UUID electionId, Map<SubjectTO, Set<QuestionTO>> questions) {
        Set<ProposalResultScore> score = new HashSet<>();
        return score;
    }

}
