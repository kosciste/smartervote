package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.domain.algorithm.ElectionProposalAlgorithm;
import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.ElectionRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.ProposalResultRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionSubjectRepository;
import ch.zhaw.smartervote.persistency.repositories.impl.ElectionRepositoryImpl;
import ch.zhaw.smartervote.persistency.repositories.impl.ProposalResultRepositoryImpl;
import ch.zhaw.smartervote.persistency.repositories.impl.QuestionSubjectRepositoryImpl;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.utility.DockerImageName;

import java.io.File;
import java.util.*;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;


class ElectionProposalServiceImplTest {

    private static final int PORT = 5432;

    private static final String POSTGRES_PASSWORD = "123456";

    private static final UUID TEST_ELECTION_ID = UUID.fromString("bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29");

    private static final File SQL_FILES = new File("../smartervote-persistency/sql");

    @Container
    private static final GenericContainer<?> POSTGRES =
            new GenericContainer<>(DockerImageName.parse("draka/smartervote-db"))
                    .withFileSystemBind(SQL_FILES + "/create-database.sql", "/create-database.sql")
                    .withFileSystemBind(SQL_FILES + "/create-tables.sql", "/create-tables.sql")
                    .withFileSystemBind(SQL_FILES + "/create-data.sql", "/create-data.sql")
                    .withEnv("POSTGRES_PASSWORD", POSTGRES_PASSWORD)
                    .withExposedPorts(PORT);

    private ElectionProposalServiceImpl electionProposalService;

    @BeforeAll
    static void setup() {
        POSTGRES.start();
        System.setProperty("db.port", POSTGRES.getFirstMappedPort().toString());
    }

    @AfterAll
    static void teardown() {
        POSTGRES.stop();
    }

    @BeforeEach
    void beforeEach() {
        DatabaseConnection databaseConnection = new DatabaseConnection();
        ElectionRepository electionRepository = new ElectionRepositoryImpl(databaseConnection);
        ProposalResultRepository proposalResultRepository = new ProposalResultRepositoryImpl(databaseConnection);
        ElectionProposalAlgorithm electionProposalAlgorithm = new ElectionProposalAlgorithm(proposalResultRepository);
        QuestionSubjectRepository questionSubjectRepository =
                new QuestionSubjectRepositoryImpl(databaseConnection);
        electionProposalService =
                new ElectionProposalServiceImpl(electionRepository, questionSubjectRepository, electionProposalAlgorithm);
    }

    /**
     * Dummy test to verify the setup is working.
     */
    @Test
    void getAvailableElectionsExpectedSize() {
        int expectedSize = 1;
        Set<ElectionTO> elections = electionProposalService.getAvailableElections();
        assertEquals(elections.size(), expectedSize);
    }

    @Test
    void getAvailableElectionsExpectedValues() {
        String expectedName = "Nationalratswahlen";
        Set<ElectionTO> elections = electionProposalService.getAvailableElections();
        ElectionTO election = new ArrayList<>(elections).get(0);
        assertEquals(expectedName, election.getName());
        assertEquals(TEST_ELECTION_ID, election.getId());
    }

    @Test
    void getQuestionSubjectsExpectedSize() {
        Set<SubjectTO> subjects = electionProposalService.getQuestionSubjects(TEST_ELECTION_ID);
        assertEquals(subjects.size(), 13);
    }

    @Test
    void getQuestionSubjectsExpectedValues() {
        int expectedCount = 1;
        String expectedName1 = "Staatspolitik";
        String expectedName2 = "Aussenbeziehungen";
        String expectedName3 = "Sozialstaat & Familie";
        Set<SubjectTO> subjects = electionProposalService.getQuestionSubjects(TEST_ELECTION_ID);
        List<SubjectTO> subjectList = new ArrayList<>(subjects);
        assertEquals(expectedCount, subjectList.stream().filter(s -> s.getName().equals(expectedName1)).count());
        assertEquals(expectedCount, subjectList.stream().filter(s -> s.getName().equals(expectedName2)).count());
        assertEquals(expectedCount, subjectList.stream().filter(s -> s.getName().equals(expectedName3)).count());
    }

    @Test
    void getQuestionCatalogueContainingElements() {
        int expectedSize = 6;
        SubjectTO subject = createSubject();
        Set<SubjectTO> subjectTOs = Collections.singleton(subject);
        Map<SubjectTO, Set<QuestionTO>> questionCatalogue =
                electionProposalService.getQuestionCatalogue(TEST_ELECTION_ID, subjectTOs);
        assertTrue(questionCatalogue.containsKey(subject));
        assertEquals(expectedSize, questionCatalogue.get(subject).size());
    }

    @Test
    void getQuestionCatalogueWithoutElements() {
        SubjectTO subject = createSubject();
        subject.setWeight(SubjectWeight.NOT_INTERESTED);
        Set<SubjectTO> subjectTOs = Collections.singleton(subject);
        Map<SubjectTO, Set<QuestionTO>> questionCatalogue =
                electionProposalService.getQuestionCatalogue(TEST_ELECTION_ID, subjectTOs);
        assertTrue(questionCatalogue.isEmpty());
    }

    private SubjectTO createSubject() {
        UUID subjectId = UUID.fromString("d3f718e8-29db-4274-8885-23a6c64e5da5");
        String subjectName = "Sozialstaat & Familie";
        SubjectWeight weight = SubjectWeight.NORMAL;
        return new SubjectTO(subjectId, subjectName, weight);
    }

    @Test
    void calculateElectionProposal() {
    }

}