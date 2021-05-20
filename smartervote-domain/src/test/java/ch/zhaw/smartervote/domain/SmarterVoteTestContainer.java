package ch.zhaw.smartervote.domain;

import org.testcontainers.containers.GenericContainer;
import org.testcontainers.utility.DockerImageName;

/**
 * Singleton that is used by all tests to create the test container. Will only create one test container
 * for all integration tests. Shutdown of the test container is handled by the JVM.
 *
 * @author Raphael Krebs
 * @author Leo Rudin
 */
public class SmarterVoteTestContainer {

    private static final String COLON = ":";
    private static final String NOTHING = "";
    private static final int PORT = 5432;
    private static final String POSTGRES_PASSWORD = "123456";

    /**
     * Instance of the smarter vote test container class.
     */
    private static SmarterVoteTestContainer INSTANCE;

    /**
     * Instance of the test container.
     */
    private GenericContainer<?> CONTAINER;

    private SmarterVoteTestContainer() {}

    /**
     * Returns instance of this class.
     *
     * @return instance of this class
     */
    public static SmarterVoteTestContainer getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new SmarterVoteTestContainer();
        }

        return INSTANCE;
    }

    /**
     * Starts the database container instance only once for all tests.
     */
    public void start() {
        if (CONTAINER != null) {
            return; // only create the container once for all tests
        }

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

}
