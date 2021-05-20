package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.*;
import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import ch.zhaw.smartervote.persistency.entities.Party;
import ch.zhaw.smartervote.persistency.repositories.PartyRepository;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;

import java.time.LocalDate;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

/**
 * This class contains the integration tests for the politician service.
 *
 * @author Raphael Krebs
 */
@DataJpaTest
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class})
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class PoliticianServiceIntegrationTest extends AbstractIntegrationTest  {

    private static final int DEFAULT_AGE_FROM = 18;
    private static final int DEFAULT_AGE_TO = 90;
    private static PoliticianFilterTO defaultFilter;

    @Autowired
    PoliticianService politicianService;

    @Autowired
    ElectionProposalService electionProposalService;

    @Autowired
    PartyRepository partyRepository;

    @Autowired
    PoliticianRepository politicianRepository;

    @BeforeAll
    public static void setup() {
        defaultFilter = new PoliticianFilterTO("","",DEFAULT_AGE_FROM,DEFAULT_AGE_TO);
    }

    /**
     * Tests if all parties of the database are returned, and if there is no duplicate in the returned parties.
     */
    @Test
    void testGetParties() {
        List<Party> expectedParties = partyRepository.findAll();
        List<String> parties = politicianService.getParties();
        expectedParties.forEach(expectedParty -> assertTrue(parties.contains(expectedParty.getName())));
        Set<String> duplicateVerificationSet = new HashSet<>();
        parties.forEach(party -> assertTrue(duplicateVerificationSet.add(party)));
    }

    /**
     * Tests if a valid age returns the expected politicians.
     */
    @Test
    void testFilterPoliticianAge() {
        int ageFrom = 22;
        int ageTo = 34;
        PoliticianFilterTO filter = new PoliticianFilterTO("","",ageFrom,ageTo);
        PoliticianList politicians = politicianService.filterPoliticians(0, 100,filter);
        politicians.forEach(politician -> {
            int age = LocalDate.now().getYear() - politician.getBirthYear();
            assertTrue(age >= ageFrom && age <= ageTo); });
    }

    /**
     * Tests if an invalid filter does not return any politicians.
     */
    @Test
    void testFilterInvalidAge() {
        int ageFrom = 25;
        int ageTo = 24;
        PoliticianFilterTO filter = new PoliticianFilterTO("","", ageFrom, ageTo);
        PoliticianList politicians = politicianService.filterPoliticians(0, 100,filter);
        assertTrue(politicians.isEmpty());
    }

    /**
     * Tests if a filter with an exact age, e.g. minAge = maxAge, returns politicians that have exactly that age.
     */
    @Test
    void testFilterExactAge() {
        int age = LocalDate.now().getYear() - 1996;
        PoliticianFilterTO filter = new PoliticianFilterTO("","", age, age);
        PoliticianList politicians = politicianService.filterPoliticians(0, 100,filter);
        int expectedSize = 1;
        assertEquals(expectedSize, politicians.size());
        assertTrue(politicians.stream().anyMatch(p -> p.getName().equals("Gretchen Gertraud")));

    }

    /**
     * Tests if the parties in the filter return the correct politicians.
     */
    @Test
    void testFilterPoliticianParty() {
        final String party1 = "SVP";
        PoliticianFilterTO filter = new PoliticianFilterTO(party1,"",DEFAULT_AGE_FROM, DEFAULT_AGE_TO);
        PoliticianList politicians = politicianService.filterPoliticians(0, 100,filter);

        assertFalse(politicians.isEmpty());
        assertTrue(politicians.stream().allMatch(p -> p.getParty().equals(party1)));
        final String party2 = "SP";
        filter = new PoliticianFilterTO(party2,"",DEFAULT_AGE_FROM, DEFAULT_AGE_TO);
        politicians = politicianService.filterPoliticians(0, 100,filter);
        assertFalse(politicians.isEmpty());
        assertTrue(politicians.stream().allMatch(p -> p.getParty().equals(party2)));
    }

    /**
     * Tests if filtering for gender only returns the politicians of that gender.
     */
    @Test
    void testFilterGender() {
        final String gender1 = "Male";
        PoliticianFilterTO filter = new PoliticianFilterTO("",gender1, DEFAULT_AGE_FROM, DEFAULT_AGE_TO);
        PoliticianList politicians = politicianService.filterPoliticians(0, 100,filter);
        assertFalse(politicians.isEmpty());
        assertTrue(politicians.stream().allMatch(p -> p.getGender().equals(gender1)));

        final String gender2 = "Female";
        filter = new PoliticianFilterTO("",gender2,DEFAULT_AGE_FROM, DEFAULT_AGE_TO);
        politicians = politicianService.filterPoliticians(0, 100,filter);
        assertFalse(politicians.isEmpty());
        assertTrue(politicians.stream().allMatch(p -> p.getGender().equals(gender2)));
    }

    /**
     * Tests if the page size of the filtered page is correct.
     */
    @Test
    void testPageSize() {
        int expectedSize = 1;
        PoliticianList politicians = politicianService.filterPoliticians(0, expectedSize, defaultFilter);
        assertEquals(expectedSize, politicians.size());

        expectedSize = 10;
        politicians = politicianService.filterPoliticians(0, expectedSize, defaultFilter);
        assertEquals(expectedSize, politicians.size());

        expectedSize = (int) politicianRepository.count();
        int askedForSize = expectedSize + 100;
        politicians = politicianService.filterPoliticians(0, askedForSize, defaultFilter);
        assertEquals(expectedSize, politicians.size());
    }

    /**
     * Tests that an exception is thrown, an invalid page size is passed when filtering politicians.
     */
    @Test
    void testInvalidPageSize() {
        int invalidSize = 0;
        assertThrows(IllegalArgumentException.class, () ->
                politicianService.filterPoliticians(0, invalidSize, defaultFilter));
    }

    /**
     * Tests if pagination for full pages works correctly.
     */
    @Test
    void testPagination() {
        PoliticianList expectedPage = politicianService.filterPoliticians(0, 10, defaultFilter);
        PoliticianList firstPage = politicianService.filterPoliticians(0, 5, defaultFilter);
        PoliticianList secondPage = politicianService.filterPoliticians(1, 5, defaultFilter);
        PoliticianList mergedPages = new PoliticianList(firstPage, -1, -1);
        mergedPages.addAll(secondPage);
        assertEquals(expectedPage, mergedPages);
    }

    /**
     * Tests if pagination for the last page, works correctly.
     */
    @Test
    void testPaginationEnd() {
        int totalPoliticians = (int) politicianRepository.count();
        int pageSize = totalPoliticians - 1;
        int expectedSecondPageSize = 1;
        PoliticianList firstPage = politicianService.filterPoliticians(0, pageSize, defaultFilter);
        PoliticianList secondPage = politicianService.filterPoliticians(1, pageSize, defaultFilter);
        assertEquals(pageSize, firstPage.size());
        assertEquals(expectedSecondPageSize, secondPage.size());
    }

    /**
     * Tests if pages after the last page are empty.
     */
    @Test
    void testEmptyPage() {
        int pageSize = (int) politicianRepository.count();
        int expectedSize = 0;
        PoliticianList secondPage = politicianService.filterPoliticians(1, pageSize, defaultFilter);
        assertEquals(expectedSize, secondPage.size());
    }

    /**
     * Tests if a filter with a valid election id only returns the expected politicians.
     */
    @Test
    void testfilterWithResultId() throws DomainException {
        UUID electionId = UUID.fromString("004c25b6-0000-0000-0000-4b3fd10e9c00");
        SubjectTO subject = electionProposalService.getQuestionSubjects(electionId).get(0);
        subject.setWeight(SubjectWeight.NORMAL);
        Map<SubjectTO, List<QuestionTO>> questions = electionProposalService
                .getQuestionCatalogue(electionId, Collections.singletonList(subject));
        questions.forEach((key, value) -> value.forEach(q -> q.setAnswer(3)));
        UUID resultId = electionProposalService.calculateElectionProposal(electionId, questions);

        int politicianCount = 4;
        PoliticianList politicianList = politicianService.filterPoliticians(0, 100, defaultFilter, resultId);
        assertEquals(politicianCount, politicianList.size());
    }

    /**
     * Tests if passing an invalid proposal result returns the expected domain exception.
     */
    @Test
    void testfilterWithInvalidResultId() {
        UUID invalidResultId = UUID.fromString("004c25b6-1234-0000-0000-4b3fd10e9c00");
        Exception exception = assertThrows(DomainException.class, () ->
            politicianService.filterPoliticians(0, 100, defaultFilter, invalidResultId)
        );
        assertEquals(PoliticianService.INVALID_PROPOSAL_RESULT, exception.getMessage());

    }

    /**
     * Tests if the politician data of a vaild politician is returned correctly.
     */
    @Test
    void testGetPoliticianData() {
        UUID politicianId = UUID.fromString("ab1d763b-ca76-4ac5-81ef-a98d4f34eabc");
        String ipAddress = "127.0.0.1";
        Optional<PoliticianProfileTO> profileOptional = politicianService.getPoliticianData(politicianId, ipAddress);
        assertTrue(profileOptional.isPresent());
        PoliticianProfileTO profile = profileOptional.get();
        assertEquals("Yes Hess", profile.getName());
        assertEquals("Female", profile.getGender());
        assertEquals("Metzgerin", profile.getProfession());
    }

    /**
     * Tests if an invalid politician id results in an empty optional.
     */
    @Test
    void testGetInvalidPoliticianData() {
        UUID politicianId = UUID.fromString("ab1d763b-1233-3333-1111-a98d4f34eabc");
        String ipAddress = "127.0.0.1";
        Optional<PoliticianProfileTO> profileOptional = politicianService.getPoliticianData(politicianId, ipAddress);
        assertTrue(profileOptional.isEmpty());
    }
}
