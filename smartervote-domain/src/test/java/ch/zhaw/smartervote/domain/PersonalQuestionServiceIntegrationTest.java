package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PersonalQuestionService;
import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.transaction.TestTransaction;

import java.util.Optional;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

// declare this test as a jpa test which loads the spring context with
// just relevant configuration to work with spring jpa
@DataJpaTest
// tell spring boot where to look for the jpa configuration as well as the TestApplication to enable
// dependency injection
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class})
// do not use in memory database use application specific db instead (in our case the test container db)
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class PersonalQuestionServiceIntegrationTest extends AbstractIntegrationTest {

    @Autowired
    private PersonalQuestionService personalQuestionService;

    @Autowired
    private PoliticianRepository politicianRepository;

    @Test
    void testUpvoteQuestion() throws DomainException {
        boolean result = personalQuestionService.addQuestion(
                UUID.fromString("a044da59-0467-4dea-8e30-e0dee2b053a5"), "Test Test");
        assertTrue(result);

        commitAndCreateNewTransaction(); // required for the checks below

        Optional<Politician> politician = politicianRepository.findById(UUID.fromString("a044da59-0467-4dea-8e30-e0dee2b053a5"));
        assertTrue(politician.isPresent());
        assertEquals(1, politician.get().getPersonalQuestions().size());

    }

}
