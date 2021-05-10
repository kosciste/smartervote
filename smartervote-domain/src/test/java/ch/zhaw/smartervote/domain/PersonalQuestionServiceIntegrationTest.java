package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;

// declare this test as a jpa test which loads the spring context with
// just relevant configuration to work with spring jpa
@DataJpaTest
// tell spring boot where to look for the jpa configuration as well as the TestApplication to enable
// dependency injection
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class})
// do not use in memory database use application specific db instead (in our case the test container db)
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class PersonalQuestionServiceIntegrationTest extends AbstractIntegrationTest {

    @Test
    void testUpvoteQuestion() {
        // TODO:
    }

}
