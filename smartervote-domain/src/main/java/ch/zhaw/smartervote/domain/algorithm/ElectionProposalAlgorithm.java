package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;
import ch.zhaw.smartervote.persistency.repositories.iface.ProposalResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/**
 * This class calculates the election based on the answered questions of the user.
 *
 * @author Raphael Krebs
 */
@Component("electionProposalAlgorithm")
public class ElectionProposalAlgorithm {

    /**
     * The repository for the proposal result.
     */
    private final ProposalResultRepository proposalResultRepository;

    @Autowired
    public ElectionProposalAlgorithm(ProposalResultRepository proposalResultRepository) {
        this.proposalResultRepository = proposalResultRepository;
    }

    /**
     * Calculates the election based on the answered questions of the user. Not implemented yet, this method currently
     * creates a empty election proposal.
     *
     * @param electionId the id of the election.
     * @param questions the answered questions.
     * @return the UUID of the result.
     */
    public UUID calculate(UUID electionId, Map<SubjectTO, Set<QuestionTO>> questions) {
        ProposalResult proposalResult = new ProposalResult();
        Set<ProposalResultScore> proposalResultScores = calculateResults(electionId, questions);
        proposalResult.setProposalResultScores(proposalResultScores);
        proposalResultRepository.insert(proposalResult);
        return proposalResult.getId();
    }

    /**
     * Calculates the results to be filled into tha database.
     *
     * @param electionId the id of the election.
     * @param questions the answered questions.
     * @return the proposal result scores for each politician.
     */
    private Set<ProposalResultScore> calculateResults(
            UUID electionId, Map<SubjectTO, Set<QuestionTO>> questions) {
        Set<ProposalResultScore> score = new HashSet<>();
        return score;
    }

}
