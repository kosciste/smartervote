package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;

import java.util.ArrayList;
import java.util.Collection;

/**
 * The politician list extends an ArrayList containing PoliticianTO objects. It also contains the total size of the
 * Politicians in the database, so the UI can handle pagination properly.
 */
public class PoliticianList extends ArrayList<PoliticianTO> {

    /**
     * The total count of all the politicians in the database.
     */
    int totalSize;

    public PoliticianList(int totalSize) {
        this.totalSize = totalSize;
    }

    public PoliticianList(Collection<PoliticianTO> c, int totalSize) {
        super(c);
        this.totalSize = totalSize;
    }

    public int getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(int totalSize) {
        this.totalSize = totalSize;
    }

}
