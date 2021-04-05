package ch.zhaw.smartervote.contract;

import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

public class PoliticianService {

    public List<PoliticianTO> getPoliticians(int offset, int size) {
        return new ArrayList<>();
    }

    public List<PoliticianTO> getPoliticians(int offset, int size, UUID resultId) {
        return new ArrayList<>();
    }

    public List<PoliticianTO> filterPoliticians(int offset, int size, PoliticianFilterTO filter) {
        return new ArrayList<>();
    }

    public List<PoliticianTO> filterPoliticians(int offset, int size, PoliticianFilterTO filter, UUID resultId) {
        return new ArrayList<>();
    }

    public Optional<PoliticianProfileTO> getPoliticianData(UUID politicianId) {
        return Optional.empty();
    }
}
