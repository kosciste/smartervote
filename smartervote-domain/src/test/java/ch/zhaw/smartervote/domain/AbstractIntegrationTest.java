package ch.zhaw.smartervote.domain;

import org.junit.jupiter.api.BeforeAll;
import org.springframework.test.context.transaction.TestTransaction;

/**
 * Abstract super class that needs to be extended by every integration test. Starts the test container to which the test
 * is testing to.
 *
 * @author Leo Rudin
 */
public abstract class AbstractIntegrationTest {

    @BeforeAll
    static void beforeAll() {
        SmarterVoteTestContainer.getInstance().start();
    }

    /**
     * Utility function that allows committing the current transaction so further check on the data can be performed.
     *
     * @author Leo Rudin
     */
    static void commitAndCreateNewTransaction() {
        TestTransaction.flagForCommit();
        TestTransaction.end();
        TestTransaction.start();
    }

}
