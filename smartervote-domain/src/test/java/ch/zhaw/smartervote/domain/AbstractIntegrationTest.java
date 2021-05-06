package ch.zhaw.smartervote.domain;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.utility.DockerImageName;

public abstract class AbstractIntegrationTest {

    /**
     * Use port one number higher than the standard postgres port for the test container database.
     */
    private static final int PORT = 5432;

    private static final String POSTGRES_PASSWORD = "123456";

    private static GenericContainer<?> CONTAINER;

    @BeforeAll
    static void beforeAll() {
        String createDatabase = AbstractIntegrationTest.class.getResource("/sql/create-database.sql").getPath();
        String createTables = AbstractIntegrationTest.class.getResource("/sql/create-tables.sql").getPath();
        String createData = AbstractIntegrationTest.class.getResource("/sql/create-data.sql").getPath();

        CONTAINER = new GenericContainer<>(DockerImageName.parse("draka/smartervote-db:1.0"))
                .withFileSystemBind(createDatabase, "/create-database.sql")
                .withFileSystemBind(createTables, "/create-tables.sql")
                .withFileSystemBind(createData, "/create-data.sql")
                .withEnv("POSTGRES_PASSWORD", POSTGRES_PASSWORD)
                .withExposedPorts(PORT);

        CONTAINER.start();
        System.setProperty("db.port", String.valueOf(CONTAINER.getFirstMappedPort()));
    }

    @AfterAll
    static void afterAll() {
        CONTAINER.stop();
    }

}
