package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;

import java.util.*;

/**
 * This interface implements methods to display the politicians and their profile,
 * as well as filtering the list of politicians to display.
 * @author krebsrap
 */
public interface PoliticianService {

    /**
     * Returns a list of all the politicians in the database, limited by the given size and offset.
     * The offset defines the index of the first politician that is returned,
     * the size defines the number of politicians returned.
     * @param offset The index of the first politician to be returned.
     * @param size The number of politicians to be returned.
     * @return The list of the politicians.
     */
    List<PoliticianTO> getPoliticians(int offset, int size);

    /**
     * Returns a list of politicians and their match sorted from highest to lowest match,
     * limited by the given size and offset.
     * The offset defines the index of the first politician that is returned,
     * the size defines the number of politicians returned.
     * @param offset The index of the first politician to be returned.
     * @param size The number of politicians to be returned.
     * @param resultId The UUID of the election proposal returned by
     * {@link ElectionProposalService#calculateElectionProposal(UUID, Map)}.
     * @return The list of the politicians.
     */
    List<PoliticianTO> getPoliticians(int offset, int size, UUID resultId);

    /**
     * Returns a filtered list of politicians, limited by the given size and offset.
     * The offset defines the index of the first politician that is returned,
     * the size defines the number of politicians returned.
     * @param offset The index of the first politician to be returned.
     * @param size The number of politicians to be returned.
     * @param filter The filter to filter the returned list of politicians.
     * @return The filtered list of politicians.
     */
    List<PoliticianTO> filterPoliticians(int offset, int size, PoliticianFilterTO filter);

    /**
     * Returns a filtered list of politicians and their match sorted from highest to lowest match,
     * limited by the given size and offset.
     * The offset defines the index of the first politician that is returned,
     * the size defines the number of politicians returned.
     * @param offset The index of the first politician to be returned.
     * @param size The number of politicians to be returned.
     * @param filter The filter to filter the returned list of politicians.
     * @param resultId The UUID of the election proposal returned by
     *      * {@link ElectionProposalService#calculateElectionProposal(UUID, Map)}.
     * @return The filtered list of politicians.
     */
    List<PoliticianTO> filterPoliticians(int offset, int size, PoliticianFilterTO filter, UUID resultId);

    /**
     * Returns an optional containing a politicians profile.
     * @param politicianId The UUID of the politician.
     * @return An optional containing the politicians profile.
     */
    Optional<PoliticianProfileTO> getPoliticianData(UUID politicianId);
}
