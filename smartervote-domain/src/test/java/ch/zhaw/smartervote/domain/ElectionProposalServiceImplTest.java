package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.ElectionRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionSubjectRepository;
import ch.zhaw.smartervote.persistency.repositories.impl.ElectionRepositoryImpl;
import ch.zhaw.smartervote.persistency.repositories.impl.QuestionSubjectRepositoryImpl;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.utility.DockerImageName;

import java.io.File;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertFalse;


class ElectionProposalServiceImplTest {

    private static final File sqlFiles = new File("../smartervote-persistency/sql");

    @Container
    private static final GenericContainer<?> postgres =
            new GenericContainer<>(DockerImageName.parse("draka/smartervote-db"))
                    .withFileSystemBind(sqlFiles + "/create-database.sql", "/create-database.sql")
                    .withFileSystemBind(sqlFiles + "/create-tables.sql", "/create-tables.sql")
                    .withFileSystemBind(sqlFiles + "/create-data.sql", "/create-data.sql")
                    .withEnv("POSTGRES_PASSWORD", "123456")
                    .withExposedPorts(5432);

    private ElectionProposalServiceImpl electionProposalService;

    @BeforeAll
    static void setup() {
        postgres.start();
    }

    @AfterAll
    static void teardown() {
        postgres.stop();
    }

    @BeforeEach
    void beforeEach() {
        System.setProperty("db.port", postgres.getFirstMappedPort().toString());
        DatabaseConnection databaseConnection = new DatabaseConnection();
        ElectionRepository electionRepository = new ElectionRepositoryImpl(databaseConnection);
        QuestionSubjectRepository questionSubjectRepository =
                new QuestionSubjectRepositoryImpl(databaseConnection);
        electionProposalService = new ElectionProposalServiceImpl(electionRepository, questionSubjectRepository);
    }

    /**
     * Dummy test to verify the setup is working.
     */
    @Test
    void getAvailableElections() {
        Set<ElectionTO> elections = electionProposalService.getAvailableElections();
        assertFalse(elections.isEmpty());
    }

    @Test
    void getQuestionSubjects() {
    }

    @Test
    void getQuestionCatalogue() {
    }

    @Test
    void calculateElectionProposal() {
    }

}