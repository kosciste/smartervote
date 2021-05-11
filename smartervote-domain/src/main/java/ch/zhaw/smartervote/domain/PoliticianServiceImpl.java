package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PoliticianList;
import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import ch.zhaw.smartervote.domain.mapping.MapPolitician;
import ch.zhaw.smartervote.domain.mapping.MapPoliticianProfile;
import ch.zhaw.smartervote.persistency.entities.*;
import ch.zhaw.smartervote.persistency.repositories.*;
import ch.zhaw.smartervote.persistency.specificiations.PoliticianFilterSpecification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * This interface implements methods to display the politicians and their profile, as well as filtering the list of
 * politicians to display.
 *
 * @author Raphael Krebs
 * @author Leo Rudin
 * @author Stefan Koscica
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

    /**
     * The party repository.
     */
    PartyRepository partyRepository;

    /**
     * Personal question repository.
     */
    PersonalQuestionRepository personalQuestionRepository;

    /**
     * Media coverage repository.
     */
    MediaCoverageRepository mediaCoverageRepository;

    @Autowired
    public PoliticianServiceImpl(PoliticianRepository politicianRepository,
                                 ProposalResultRepository proposalResultRepository,
                                 PersonalQuestionRepository personalQuestionRepository,
                                 MediaCoverageRepository mediaCoverageRepository,
                                 ProposalResultScoreRepository proposalResultScoreRepository,
                                 PartyRepository partyRepository) {
        this.politicianRepository = politicianRepository;
        this.proposalResultRepository = proposalResultRepository;
        this.proposalResultScoreRepository = proposalResultScoreRepository;
        this.personalQuestionRepository = personalQuestionRepository;
        this.mediaCoverageRepository = mediaCoverageRepository;
        this.partyRepository = partyRepository;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PoliticianList filterPoliticians(int page, int pageSize, PoliticianFilterTO filter) {
        PoliticianFilterSpecification specification = new PoliticianFilterSpecification(
                PoliticianService.DEFAULT_FILTER,
                filter.getParty(),
                filter.getGender(),
                filter.getAgeFrom(),
                filter.getAgeTo());

        Page<Politician> pageResult = politicianRepository.findAll(specification, PageRequest.of(page, pageSize));

        List<PoliticianTO> politicianTOS = MapPolitician.toTransferObjects(pageResult.getContent());
        return new PoliticianList(politicianTOS, pageResult.getPageable().getPageNumber(), pageResult.getTotalPages());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public PoliticianList filterPoliticians(int page, int pageSize, PoliticianFilterTO filter, UUID resultId)
            throws DomainException {
        Optional<ProposalResult> proposalResultOptional = proposalResultRepository.findById(resultId);
        if (proposalResultOptional.isEmpty()) throw new DomainException("Proposal result does not exist.");

        PoliticianFilterSpecification specification = new PoliticianFilterSpecification(
                PoliticianService.DEFAULT_FILTER,
                filter.getParty(),
                filter.getGender(),
                filter.getAgeFrom(),
                filter.getAgeTo(),
                resultId);

        Page<Politician> pageResult = politicianRepository.findAll(specification, PageRequest.of(page, pageSize));
        List<PoliticianTO> politicianTOS = MapPolitician.toTransferObjects(pageResult.getContent(),
                proposalResultOptional.get().getProposalResultScores());

        return new PoliticianList(politicianTOS, pageResult.getPageable().getPageNumber(), pageResult.getTotalPages());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<String> getParties() {
        return partyRepository.findAll().stream().map(Party::getName).collect(Collectors.toList());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Optional<PoliticianProfileTO> getPoliticianData(UUID politicianId, String ipAddress) {
        Optional<Politician> politician = politicianRepository.findById(politicianId);
        if (politician.isEmpty()) return Optional.empty();

        List<PersonalQuestion> personalQuestions = personalQuestionRepository.findPersonalQuestionByPoliticianIdOrderByUpvotesDesc(politician.get().getId());
        Set<UUID> ids = personalQuestions.stream().map(BaseEntity::getId).collect(Collectors.toSet());
        List<PersonalQuestion> upvotedPersonalQuestions = personalQuestionRepository.findPersonalQuestionsByIdsAndIpAddress(ids, ipAddress);
        List<MediaCoverage> mediaCoverages = mediaCoverageRepository.findMediaCoverageByPoliticianIdOrderByCreationTime(politician.get().getId());

        return Optional.of(MapPoliticianProfile.toTransferObject(politician.get(), personalQuestions, mediaCoverages, upvotedPersonalQuestions));
    }

}
