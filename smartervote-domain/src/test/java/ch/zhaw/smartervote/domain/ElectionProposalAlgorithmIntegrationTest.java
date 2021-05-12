package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;

@DataJpaTest
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class})
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class ElectionProposalAlgorithmIntegrationTest {

    @Test
    void testProposalWrittenToDatabase() {

    }

    @Test
    void testAllPoliticiansWrittenToDatabase() {

    }

    @Test
    void testProposalCalculation() {
        // Single question, with expected proposal result
    }

    @Test
    void testInvalidElectionId() {

    }

    @Test
    void testRightVoterPoliticianRecommendation() {

    }

    @Test
    void testLeftVoterPoliticianRecommendation() {

    }

}
