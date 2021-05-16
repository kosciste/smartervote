package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * This interface defines all functions used for the election proposal. This includes available elections, question
 * subjects and corresponding questions as well as the calculation of the election proposal.
 *
 * @author Raphael Krebs
 */
public interface ElectionProposalService {

    /**
     * Returns all available elections, for which questions exist.
     *
     * @return all available elections.
     */
    List<ElectionTO> getAvailableElections();

    /**
     * Returns all question subjects for a given election.
     *
     * @param electionId the UUID of the election.
     * @return All question subjects for the given election.
     * @throws DomainException if the election id does not exist.
     */
    List<SubjectTO> getQuestionSubjects(UUID electionId) throws DomainException;

    /**
     * Returns the question catalogue for a given election, where the topic of the selection does not equal 0.
     *
     * @param electionId the UUID of the election.
     * @param selection a map containing the UUID of the topics, and the weight of these topics. Topics with weight zero
     * will be ignored.
     * @return A map with all subject that where not wighted with 0, and their corresponding questions.
     * @throws DomainException if the election id does not exist.
     */
    Map<SubjectTO, List<QuestionTO>> getQuestionCatalogue(UUID electionId, List<SubjectTO> selection)
            throws DomainException;

    /**
     * Returns the UUID of the calculated election proposal for the answers of the user. The UUID can be used to get the
     * politician match by passing it to {@link PoliticianService#getPoliticianData(UUID, String)} or {@link
     * PoliticianService#filterPoliticians(int, int, PoliticianFilterTO, UUID)}
     *
     * @param electionId the UUID of the election.
     * @param questions a map with the weighted subjects, and the answered questions.
     * @return the UUID of the election proposal.
     * @throws DomainException if the election id does not exist.
     */
    UUID calculateElectionProposal(UUID electionId, Map<SubjectTO, List<QuestionTO>> questions)
            throws DomainException;

}
