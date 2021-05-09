package ch.zhaw.smartervote.persistency.specificiations;

import ch.zhaw.smartervote.persistency.entities.Party;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Specification that is used to create dynamic queries to filter politicians.
 *
 * @author Leo Rudin
 */
public class PoliticianFilterSpecification implements Specification<Politician> {

    /**
     * Party that should be filtered.
     */
    private final String party;

    /**
     * Gender that should be filtered.
     */
    private final String gender;

    /**
     * Minimum allowed age.
     */
    private final int ageFrom;

    /**
     * Maximum allowed age.
     */
    private final int ageTo;

    /**
     * Result id of only politicians of a specific results shall be filtered.
     */
    private final UUID resultId;

    public PoliticianFilterSpecification(String party, String gender, int ageFrom, int ageTo) {
        this(party, gender, ageFrom, ageTo, null);
    }

    public PoliticianFilterSpecification(String party, String gender, int ageFrom, int ageTo, UUID resultId) {
        this.party = party;
        this.gender = gender;
        this.ageFrom = ageFrom;
        this.ageTo = ageTo;
        this.resultId = resultId;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Predicate toPredicate(Root<Politician> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
        List<Predicate> predicates = new ArrayList<>();

        int yearTo = LocalDate.now().getYear() - ageFrom;
        int yearFrom = LocalDate.now().getYear() - ageTo;

        predicates.add(criteriaBuilder.and(criteriaBuilder.greaterThan(root.get("birthyear"), yearFrom)));
        predicates.add(criteriaBuilder.and(criteriaBuilder.lessThan(root.get("birthyear"), yearTo)));

        if (gender != null) {
            predicates.add(criteriaBuilder.and(criteriaBuilder.equal(root.get("gender"), gender)));
        }

        if (party != null) {
            Join<Politician, Party> partyRoot = root.join("party");
            predicates.add(criteriaBuilder.and(criteriaBuilder.equal(partyRoot.get("name"), party)));
        }

        if (resultId != null) {
            Join<Politician, ProposalResultScore> proposalResultScoreRoot = root.joinSet("proposalResultScores");
            Join<ProposalResultScore, ProposalResult> proposalResultRoot = proposalResultScoreRoot.join("proposalResult");
            predicates.add(criteriaBuilder.and(criteriaBuilder.equal(proposalResultRoot.get("id"), resultId)));
        }

        return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
    }

}
