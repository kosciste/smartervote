package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.ElementNotFoundException;
import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.domain.algorithm.ElectionProposalAlgorithm;
import ch.zhaw.smartervote.domain.algorithm.ProposalResultBuilder;
import ch.zhaw.smartervote.domain.algorithm.QuestionAnswerMatcher;
import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.*;
import ch.zhaw.smartervote.persistency.repositories.impl.*;
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

    private ProposalResultScoreRepository proposalResultScoreRepository;

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
        PoliticianRepository politicianRepository = new PoliticianRepositoryImpl(databaseConnection);
        QuestionAnswerRepository questionAnswerRepository = new QuestionAnswerRepositoryImpl(databaseConnection);
        QuestionAnswerMatcher questionAnswerMatcher = new QuestionAnswerMatcher(questionAnswerRepository);
        proposalResultScoreRepository = new ProposalResultScoreRepositoryImpl(databaseConnection);
        ProposalResultBuilder proposalResultBuilder = new ProposalResultBuilder(proposalResultRepository,
                politicianRepository, proposalResultScoreRepository);
        ElectionProposalAlgorithm electionProposalAlgorithm = new ElectionProposalAlgorithm(proposalResultBuilder,
                questionAnswerMatcher);
        QuestionSubjectRepository questionSubjectRepository = new QuestionSubjectRepositoryImpl(databaseConnection);
        electionProposalService = new ElectionProposalServiceImpl(electionRepository,
                questionSubjectRepository, electionProposalAlgorithm, politicianRepository);
    }

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
    void getQuestionSubjectsExpectedSize() throws ElementNotFoundException {
        Set<SubjectTO> subjects = electionProposalService.getQuestionSubjects(TEST_ELECTION_ID);
        assertEquals(subjects.size(), 13);
    }

    @Test
    void getQuestionSubjectsExpectedValues() throws ElementNotFoundException {
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
    void getQuestionCatalogueContainingElements() throws ElementNotFoundException {
        int expectedSize = 6;
        SubjectTO subject = createSubject();
        Set<SubjectTO> subjectTOs = Collections.singleton(subject);
        Map<SubjectTO, Set<QuestionTO>> questionCatalogue =
                electionProposalService.getQuestionCatalogue(TEST_ELECTION_ID, subjectTOs);
        assertTrue(questionCatalogue.containsKey(subject));
        assertEquals(expectedSize, questionCatalogue.get(subject).size());
    }

    @Test
    void getQuestionCatalogueWithoutElements() throws ElementNotFoundException {
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
    void calculateElectionProposal() throws ElementNotFoundException {
        int expectedCount = 50;
        UUID electionId = UUID.fromString("bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29");
        Map<SubjectTO, Set<QuestionTO>> questions = new HashMap<>();
        SubjectTO subject1 = new SubjectTO(
                UUID.fromString("d3f718e8-29db-4274-8885-23a6c64e5da5"),
                "Sozialstaat & Familie",
                SubjectWeight.NORMAL);
        QuestionTO question1 = new QuestionTO(UUID.fromString("a335650d-06b4-4e92-ba77-d5f8964ceb82"),
                "Befürworten Sie eine Erhöhung des Rentenalters (z.B. auf 67 Jahre)?");
        question1.setAnswer(2);
        QuestionTO question2 = new QuestionTO(UUID.fromString("46df8b49-923c-4f91-8362-5196efbb71e2"),
                "Soll der Staat die Schaffung von familienergänzenden Betreuungsstrukturen finanziell stärker unterstützen?");
        question1.setAnswer(1);
        questions.put(subject1, Set.of(question1, question2));
        electionProposalService.calculateElectionProposal(electionId, questions);
        proposalResultScoreRepository.findAll().forEach(s -> System.out.println(s.getPolitician().getName() + " : " + s.getMatchingScore()));
        assertEquals(expectedCount, proposalResultScoreRepository.count());
    }

}