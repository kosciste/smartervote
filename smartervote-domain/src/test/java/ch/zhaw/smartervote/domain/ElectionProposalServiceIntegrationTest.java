package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Tests the {@link ElectionProposalService}.
 *
 * @author Raphael Krebs
 * @author Leo Rudin
 */
// declare this test as a jpa test which loads the spring context with
// just relevant configuration to work with spring jpa
@DataJpaTest
// tell spring boot where to look for the jpa configuration as well as the TestApplication to enable
// dependency injection
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class})
// do not use in memory database use application specific db instead (in our case the test container db)
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class ElectionProposalServiceIntegrationTest extends AbstractIntegrationTest {

    private final UUID VALID_ELECTION_ID = UUID.fromString("bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29");

    private final UUID INVALID_ELECTION_ID = UUID.fromString("bc4c25b6-f1ab-45bc-b7ae-4b3fd10e9c29");

    @Autowired
    private ElectionProposalService electionProposalService;

    @Test
    void testGetAvailableElections() {
        List<ElectionTO> result = electionProposalService.getAvailableElections();
        assertEquals(2, result.size());
        assertTrue(result.stream().anyMatch(r -> r.getId().equals(VALID_ELECTION_ID)));
        assertTrue(result.stream().anyMatch(r -> r.getName().equals("Nationalratswahlen")));
    }

    @Test
    void testGetQuestionSubjects() throws DomainException {
        List<SubjectTO> subjectTOS = electionProposalService.getQuestionSubjects(VALID_ELECTION_ID);
        assertEquals(13, subjectTOS.size());
    }

    @Test
    void testGetQuestionSubjectsWithInvalidElection() {
        DomainException ex = assertThrows(DomainException.class, () -> {
            electionProposalService.getQuestionSubjects(INVALID_ELECTION_ID);
        });

        assertEquals(ElectionProposalService.ELECTION_NOT_FOUND, ex.getMessage());
    }

    @Test
    void testGetQuestionSubjectsWithNullParameter() {
        DomainException ex = assertThrows(DomainException.class, () -> {
            electionProposalService.getQuestionSubjects(null);
        });

        assertEquals(ElectionProposalService.INVALID_INPUT, ex.getMessage());
    }

    @Test
    void testGetQuestionCatalogue() throws DomainException {
        SubjectTO subject = createValidTestSubject();

        Map<SubjectTO, List<QuestionTO>> questionCatalogue =
                electionProposalService.getQuestionCatalogue(VALID_ELECTION_ID, Collections.singletonList(subject));

        assertTrue(questionCatalogue.containsKey(subject));
        assertEquals(6, questionCatalogue.get(subject).size());
    }

    @Test
    void testGetQuestionCatalogueWithInvalidElection() {
        DomainException ex = assertThrows(DomainException.class, () -> {
            electionProposalService.getQuestionCatalogue(INVALID_ELECTION_ID, Collections.singletonList(createValidTestSubject()));
        });

        assertEquals(ElectionProposalService.QUESTION_SUBJECT_ELECTION_MISMATCH, ex.getMessage());
    }

    @Test
    void testGetQuestionCatalogueWithNullElection() {
        DomainException ex = assertThrows(DomainException.class, () -> {
            electionProposalService.getQuestionCatalogue(null, Collections.singletonList(createValidTestSubject()));
        });

        assertEquals(ElectionProposalService.INVALID_INPUT, ex.getMessage());
    }

    @Test
    void testGetQuestionCatalogueWithNullSelection() {
        DomainException ex = assertThrows(DomainException.class, () -> {
            electionProposalService.getQuestionCatalogue(VALID_ELECTION_ID, null);
        });

        assertEquals(ElectionProposalService.INVALID_INPUT, ex.getMessage());
    }

    @Test
    void testGetQuestionCatalogueWithValidElectionButSubjectThatDoesNotBelongToTheElection() {
        SubjectTO invalidSubject = new SubjectTO(
                UUID.fromString("d3f718e8-29db-4255-8885-23a6c64e5da5"),
                "Sozialstaat & Familie",
                SubjectWeight.NORMAL);

        DomainException ex = assertThrows(DomainException.class, () -> {
            electionProposalService.getQuestionCatalogue(VALID_ELECTION_ID, Collections.singletonList(invalidSubject));
        });

        assertEquals(ElectionProposalService.QUESTION_SUBJECT_NOT_FOUND, ex.getMessage());
    }

    private SubjectTO createValidTestSubject() {
        return new SubjectTO(
                UUID.fromString("d3f718e8-29db-4274-8885-23a6c64e5da5"),
                "Sozialstaat & Familie",
                SubjectWeight.NORMAL);
    }

}