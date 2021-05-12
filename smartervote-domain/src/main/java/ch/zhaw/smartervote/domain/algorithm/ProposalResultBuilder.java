package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;
import ch.zhaw.smartervote.persistency.repositories.ProposalResultRepository;
import ch.zhaw.smartervote.persistency.repositories.ProposalResultScoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * The proposal result builder assembles the proposal result and writes it to the database.
 */

@Component("proposalResultBuilder")
public class ProposalResultBuilder {

    /**
     * The repository for politicians.
     */
    private final PoliticianRepository politicianRepository;

    /**
     * The repository for the proposal result.
     */
    private final ProposalResultRepository proposalResultRepository;

    /**
     * The repository for the proposal result scores.
     */
    private final ProposalResultScoreRepository proposalResultScoreRepository;

    @Autowired
    public ProposalResultBuilder(ProposalResultRepository proposalResultRepository,
                                 PoliticianRepository politicianRepository,
                                 ProposalResultScoreRepository proposalResultScoreRepository) {
        this.politicianRepository = politicianRepository;
        this.proposalResultRepository = proposalResultRepository;
        this.proposalResultScoreRepository = proposalResultScoreRepository;

    }

    /**
     * Adds the matching score for a politician to the proposal result.
     *
     * @param politician the politician for which the score is added.
     * @param matchingScore the score of the politician.
     */
    public UUID writeScores(Map<Politician, Integer> politicianMatches) {
        ProposalResult proposalResult = new ProposalResult();
        Set<ProposalResultScore> proposalResultScores = new HashSet<>();

        for (Map.Entry<Politician, Integer> politicianMatch : politicianMatches.entrySet()) {
            ProposalResultScore proposalResultScore = new ProposalResultScore();
            Optional<Politician> politicianOptional = politicianRepository.findById(politicianMatch.getKey().getId());
            if (politicianOptional.isEmpty()) throw new IllegalArgumentException("Politician does not exist.");
            proposalResultScore.setPolitician(politicianOptional.get());
            proposalResultScore.setMatchingScore(politicianMatch.getValue());
            proposalResultScore.setProposalResult(proposalResult);
            proposalResultScores.add(proposalResultScore);
            proposalResult.setProposalResultScores(proposalResultScores);
        }
        proposalResultRepository.save(proposalResult);
        proposalResultScoreRepository.saveAll(new ArrayList<>(proposalResultScores));
        return proposalResult.getId();
    }

}
