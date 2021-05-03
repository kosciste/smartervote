package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PoliticianList;
import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import ch.zhaw.smartervote.domain.mapping.MapPolitician;
import ch.zhaw.smartervote.domain.mapping.MapPoliticianProfile;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;
import ch.zhaw.smartervote.persistency.repositories.iface.PoliticianRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.ProposalResultRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.ProposalResultScoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Comparator;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;

/**
 * {@inheritDoc}
 */
@Component("politicianService")
public class PoliticianServiceImpl implements PoliticianService {

    /**
     * The politician repository.
     */
    PoliticianRepository politicianRepository;

    /**
     * The proposal result repository.
     */
    ProposalResultRepository proposalResultRepository;

    /**
     * The proposal result score repository.
     */
    ProposalResultScoreRepository proposalResultScoreRepository;

    @Autowired
    public PoliticianServiceImpl(PoliticianRepository politicianRepository,
                                 ProposalResultRepository proposalResultRepository,
                                 ProposalResultScoreRepository proposalResultScoreRepository) {
        this.politicianRepository = politicianRepository;
        this.proposalResultRepository = proposalResultRepository;
        this.proposalResultScoreRepository = proposalResultScoreRepository;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PoliticianList getPoliticians(int offset, int size) {
        PoliticianList politicians = MapPolitician.toTransferObjects(politicianRepository.findAll());
        politicians.sort(Comparator.comparing(PoliticianTO::getName));
        return getPoliticianSubset(offset, size, politicians);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PoliticianList getPoliticians(int offset, int size, UUID resultId) throws DomainException {
        Optional<ProposalResult> proposalResultOptional = proposalResultRepository.findById(resultId);
        if (proposalResultOptional.isEmpty()) throw new DomainException("Proposal result does not exist.");
        Set<ProposalResultScore> proposalResultScores = proposalResultOptional.get().getProposalResultScores();
        PoliticianList politicians = new PoliticianList(proposalResultScores.size());
        proposalResultScores.stream()
                .map(proposalResultScore -> MapPolitician.toTransferObject(
                        proposalResultScore.getPolitician(), proposalResultScore.getMatchingScore()))
                .sorted(Comparator.comparing(PoliticianTO::getMatch).reversed())
                .forEach(politicians::add);
        return getPoliticianSubset(offset, size, politicians);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PoliticianList filterPoliticians(int offset, int size, PoliticianFilterTO filter) {
        return null;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PoliticianList filterPoliticians(int offset, int size, PoliticianFilterTO filter, UUID resultId)
            throws DomainException {
        return null;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Optional<PoliticianProfileTO> getPoliticianData(UUID politicianId) {
        Optional<Politician> politician = politicianRepository.findById(politicianId);
        if (politician.isEmpty()) return Optional.empty();
        else return Optional.of(MapPoliticianProfile.toTransferObject(politician.get()));
    }

    /**
     * Takes a list of politicians and returns a subset of the given list. If the end index exceeds the size of the
     * list, the rest of the list is returned.
     *
     * @param offset the first element to return.
     * @param size the size of the subset.
     * @param politicians the list from where the subset is taken.
     * @return the subset of the list.
     */
    private PoliticianList getPoliticianSubset(int offset, int size, PoliticianList politicians) {
        if (offset + size > politicians.size()) politicians =
                new PoliticianList(politicians.subList(offset, politicians.size()), politicians.getTotalSize());
        else politicians = new PoliticianList(politicians.subList(offset, offset + size), politicians.getTotalSize());
        return politicians;
    }

}
