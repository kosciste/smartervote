package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;

import java.util.List;
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
     * String constant that is used for various filters e.g. the gender or the party to indicate that no filtering
     * should be done.
     */
    String DEFAULT_FILTER = "all";

    String INVALID_PROPOSAL_RESULT = "Proposal result does not exist.";

    /**
     * Returns a filtered list of all politicians. It is possible to give the page number that should be displayed and
     * page size for a page. The returned politician list will then contain the total amount of pages and the current
     * page number as well as the content itself.
     *
     * @param page current page for which the data should be returned
     * @param pageSize number of politician on the page
     * @param filter to filter the returned list of politicians
     * @return filtered list of politicians
     */
    PoliticianList filterPoliticians(int page, int pageSize, PoliticianFilterTO filter);

    /**
     * Returns a filtered list of the politician that are contained in the given proposal result id. It is possible to
     * give the page number that should be displayed and page size for a page. The returned politician list will then
     * contain the total amount of pages and the current page number as well as the content itself.
     *
     * @param page current page for which the data should be returned
     * @param pageSize number of politician on the page
     * @param filter to filter the returned list of politicians
     * @param resultId UUID of the election proposal result
     * @return filtered list of politicians.
     * @throws DomainException if the result id does not exist
     */
    PoliticianList filterPoliticians(int page, int pageSize, PoliticianFilterTO filter, UUID resultId) throws DomainException;

    /**
     * Returns all available parties.
     *
     * @return list of party names
     */
    List<String> getParties();

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
