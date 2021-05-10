package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;

import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/**
 * This interface implements methods to display the politicians and their profile, as well as filtering the list of
 * politicians to display.
 *
 * @author Raphael Krebs
 */
public interface PoliticianService {

    /**
     * Returns a list of all the politicians in the database, limited by the given size and offset. The offset defines
     * the index of the first politician that is returned, the size defines the number of politicians returned.
     *
     * @param offset the index of the first politician to be returned.
     * @param size the number of politicians to be returned.
     * @return The list of the politicians.
     */
    PoliticianList getPoliticians(int offset, int size);

    /**
     * Returns a list of politicians and their match sorted from highest to lowest match, limited by the given size and
     * offset. The offset defines the index of the first politician that is returned, the size defines the number of
     * politicians returned.
     *
     * @param offset the index of the first politician to be returned.
     * @param size the number of politicians to be returned.
     * @param resultId the UUID of the election proposal returned by {@link ElectionProposalService#calculateElectionProposal(UUID,
     * Map)}.
     * @return The list of the politicians.
     * @throws DomainException if the result id does not exist.
     */
    PoliticianList getPoliticians(int offset, int size, UUID resultId) throws DomainException;

    /**
     * Returns a filtered list of politicians, limited by the given size and offset. The offset defines the index of the
     * first politician that is returned, the size defines the number of politicians returned.
     *
     * @param offset The index of the first politician to be returned.
     * @param size The number of politicians to be returned.
     * @param filter The filter to filter the returned list of politicians.
     * @return The filtered list of politicians.
     */
    PoliticianList filterPoliticians(int offset, int size, PoliticianFilterTO filter);

    /**
     * Returns a filtered list of politicians and their match sorted from highest to lowest match, limited by the given
     * size and offset. The offset defines the index of the first politician that is returned, the size defines the
     * number of politicians returned.
     *
     * @param offset The index of the first politician to be returned.
     * @param size The number of politicians to be returned.
     * @param filter The filter to filter the returned list of politicians.
     * @param resultId The UUID of the election proposal returned by {@link ElectionProposalService#calculateElectionProposal(UUID,
     * Map)}.
     * @return The filtered list of politicians.
     * @throws DomainException if the result id does not exist.
     */
    PoliticianList filterPoliticians(int offset, int size, PoliticianFilterTO filter, UUID resultId) throws DomainException;

    /**
     * Returns an optional containing a politicians profile.
     *
     * @param politicianId the UUID of the politician.
     * @param ipAddress ip address of the user so that the personal question can be marked as already upvoted if the
     * user did so
     * @return an optional containing the politicians profile.
     */
    Optional<PoliticianProfileTO> getPoliticianData(UUID politicianId, String ipAddress);

}
