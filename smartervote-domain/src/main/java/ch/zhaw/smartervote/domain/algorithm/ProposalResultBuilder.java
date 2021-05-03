package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
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

    private final ProposalResult proposalResult;

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

    Set<ProposalResultScore> proposalResultScores;

    @Autowired
    public ProposalResultBuilder(ProposalResultRepository proposalResultRepository,
                                 PoliticianRepository politicianRepository,
                                 ProposalResultScoreRepository proposalResultScoreRepository) {
        this.politicianRepository = politicianRepository;
        this.proposalResultRepository = proposalResultRepository;
        this.proposalResultScoreRepository = proposalResultScoreRepository;
        this.proposalResult = new ProposalResult();
        this.proposalResultScores = new HashSet<>();
    }

    /**
     * Adds the matching score for a politician to the proposal result.
     *
     * @param politician the politician for which the score is added.
     * @param matchingScore the score of the politician.
     */
    public void addScore(PoliticianTO politician, int matchingScore) {
        ProposalResultScore proposalResultScore = new ProposalResultScore();
        Optional<Politician> politicianOptional = politicianRepository.findById(politician.getId());
        if (politicianOptional.isEmpty()) throw new IllegalArgumentException("Politician does not exist.");
        proposalResultScore.setPolitician(politicianOptional.get());
        proposalResultScore.setMatchingScore(matchingScore);
        proposalResultScore.setProposalResult(proposalResult);
        proposalResultScores.add(proposalResultScore);
    }

    /**
     * Writes all scores to the database.
     */
    public void writeResults() {
        proposalResult.setProposalResultScores(proposalResultScores);
        proposalResultRepository.save(proposalResult);
        proposalResultScoreRepository.saveAll(new ArrayList<>(proposalResultScores));
    }

    /**
     * Returns the UUID of the proposal result.
     *
     * @return the UUID of the proposal result.
     */
    public UUID getProposalResultId() {
        return proposalResult.getId();
    }

}
