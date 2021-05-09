package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;

import java.util.List;
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
     * Returns a filtered list of politicians, limited by the given size and offset. The offset defines the index of the
     * first politician that is returned, the size defines the number of politicians returned.
     *
     * @param offset index of the first politician to be returned.
     * @param size number of politicians to be returned.
     * @param filter to filter the returned list of politicians.
     * @return filtered list of politicians
     */
    PoliticianList filterPoliticians(int offset, int size, PoliticianFilterTO filter);

    /**
     * Returns a filtered list of politicians from a given proposal result id and their match sorted from highest to
     * lowest match, limited by the given size and offset. The offset defines the index of the first politician that is
     * returned, the size defines the number of politicians returned.
     *
     * @param offset index of the first politician to be returned.
     * @param size number of politicians to be returned.
     * @param filter to filter the returned list of politicians.
     * @param resultId UUID of the election proposal result
     * @return filtered list of politicians.
     * @throws DomainException if the result id does not exist
     */
    PoliticianList filterPoliticians(int offset, int size, PoliticianFilterTO filter, UUID resultId) throws DomainException;

    /**
     * Returns all available parties.
     *
     * @return list of party names
     */
    List<String> getParties();

    /**
     * Returns an optional containing a politicians profile.
     *
     * @param politicianId UUID of the politician
     * @return an optional containing the politicians profile
     */
    Optional<PoliticianProfileTO> getPoliticianData(UUID politicianId);

}
