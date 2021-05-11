package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;

import java.util.ArrayList;
import java.util.Collection;

/**
 * The politician list extends an ArrayList containing PoliticianTO objects. It also contains the total size of the
 * Politicians in the database, so the UI can handle pagination properly.
 *
 * @author Raphael Krebs
 */
public class PoliticianList extends ArrayList<PoliticianTO> {

    /**
     * Page number that contains this list of politicians.
     */
    private final int currentPage;

    /**
     * Total pages that are possible with the current filter.
     */
    private final int totalPages;

    public PoliticianList(Collection<? extends PoliticianTO> c, int currentPage, int totalPages) {
        super(c);
        this.currentPage = currentPage + 1;
        this.totalPages = totalPages;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public int getTotalPages() {
        return totalPages;
    }

}
