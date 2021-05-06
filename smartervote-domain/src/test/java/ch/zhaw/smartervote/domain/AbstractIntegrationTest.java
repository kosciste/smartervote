package ch.zhaw.smartervote.domain;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.utility.DockerImageName;

/**
 * Abstract super class that needs to be extended by every integration test. Starts the test container to which the test
 * is testing to.
 *
 * @author Leo Rudin
 */
public abstract class AbstractIntegrationTest {

    private static final String COLON = ":";

    private static final String NOTHING = "";

    private static final int PORT = 5432;

    private static final String POSTGRES_PASSWORD = "123456";

    private static GenericContainer<?> CONTAINER;

    @BeforeAll
    static void beforeAll() {
        String createDatabaseSqlPath = AbstractIntegrationTest.class.getResource("/sql/create-database.sql").getPath();
        String createTablesSqlPath = AbstractIntegrationTest.class.getResource("/sql/create-tables.sql").getPath();
        String createDataSqlPath = AbstractIntegrationTest.class.getResource("/sql/create-data.sql").getPath();

        // on windows systems docker runs within WSL which is not compatible with windows like paths
        // in order to make it work the colon symbol in the path has to be removed so that the
        // sql files can be properly mounted into the docker container
        createDatabaseSqlPath = createDatabaseSqlPath.replaceAll(COLON, NOTHING);
        createTablesSqlPath = createTablesSqlPath.replaceAll(COLON, NOTHING);
        createDataSqlPath = createDataSqlPath.replaceAll(COLON, NOTHING);

        CONTAINER = new GenericContainer<>(DockerImageName.parse("draka/smartervote-db:1.0"))
                .withFileSystemBind(createDatabaseSqlPath, "/create-database.sql")
                .withFileSystemBind(createTablesSqlPath, "/create-tables.sql")
                .withFileSystemBind(createDataSqlPath, "/create-data.sql")
                .withEnv("POSTGRES_PASSWORD", POSTGRES_PASSWORD)
                .withExposedPorts(PORT);

        CONTAINER.start();

        // test containers expose random port numbers so this has to be configured dynamically
        System.setProperty("db.port", String.valueOf(CONTAINER.getFirstMappedPort()));
    }

    @AfterAll
    static void afterAll() {
        CONTAINER.stop();
    }

}
