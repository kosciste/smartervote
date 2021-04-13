package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/**
 * This class calculates the election based on the answered questions of the user.
 *
 * @author Raphael Krebs
 */
public class ElectionProposalAlgorithm {

    /**
     * Calculates the election based on the answered questions of the user. Not implemented yet, this method currently
     * creates a empty election proposal.
     *
     * @param electionId the id of the election.
     * @param questions the answered questions.
     * @return the UUID of the result.
     */
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
