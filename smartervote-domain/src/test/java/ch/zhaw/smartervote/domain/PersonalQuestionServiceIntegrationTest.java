package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PersonalQuestionService;
import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;


import java.util.UUID;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.fail;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
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

    private static UUID[] polIds;

    @Autowired
    private PersonalQuestionService personalQuestionService;

    @Autowired
    private PoliticianRepository politicianRepository;

    /**
     * Fill some politician ids from the database.
     * All politicians will be "fresh" (no questions, no media entries).
     * ALL CHANGES ARE PERSISTENT.
     */
    @BeforeAll
    private static void setPoliticianIds() {

        int size = 10;
        polIds = new UUID[size];
        polIds[0] = UUID.fromString("a044da59-0467-4dea-8e30-e0dee2b053a5"); // 'Karina Tatiana', 1992
        polIds[1] = UUID.fromString("817d113c-9874-4511-a5f3-08a256a7dfb8"); // 'Rebekka Luise', 1987
        polIds[2] = UUID.fromString("04bbc8fd-b00e-428d-8a76-158d03394bf7"); // 'Carolin Iris', 1970
        polIds[3] = UUID.fromString("5bcc77e3-86a1-47b8-82c4-75443b5023c2"); // 'Ingeburg Elisabeth', 1993
        polIds[4] = UUID.fromString("621767cc-f8fb-4947-8e27-a3ec8512ddc6"); // 'Gertraud Diana', 1988
        polIds[5] = UUID.fromString("be3ff762-b466-4543-8a73-230729f51fd6"); // 'Cassandra Hermine', 1977
        polIds[6] = UUID.fromString("9017a1c3-6d81-4393-8b8c-5f68fd78f6fc"); // 'Rafael Finn', 1966
        polIds[7] = UUID.fromString("a882f183-0c6e-41a2-8745-ba9f570ecf8b"); // 'Ronald Michael', 1976
        polIds[8] = UUID.fromString("aed41ae7-e8d9-4944-aee1-ae138623bdd7"); // 'Gebhard Günter', 1987
        polIds[9] = UUID.fromString("69a474b5-263c-4797-b451-87701c625291"); // 'Hermann Burkhard', 1975

    }


    // HELPER METHOD
    private PersonalQuestion getPersonalQuestion(UUID polId, String text) {
        return politicianRepository.findById(polId).get().getPersonalQuestions().stream().filter( (e) -> text.equals(e.getText()) ).findFirst().get();
    }
    // END HELPER METHOD

    @Test
    void testAddQuestionSimple() throws DomainException {

        UUID polId = polIds[0]; // edited 'Karina Tatiana', 1992

        Politician politician = politicianRepository.findById(polId).get();
        assertEquals(0, politician.getPersonalQuestions().size());

        try {
            personalQuestionService.addQuestion(polId, "Test Test");
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below

        politician = politicianRepository.findById(polId).get();
        assertEquals(1, politician.getPersonalQuestions().size());

    }

    @Test
    void testAddQuestionFailRandomPoliticianUUID() throws DomainException {

        UUID polId = UUID.randomUUID();

        Exception exception = assertThrows(DomainException.class, () -> {
            personalQuestionService.addQuestion(polId, "Test Test");
            commitAndCreateNewTransaction(); // required for the checks below
        });    
        
        String expectedMessage = PersonalQuestionService.POLITICIAN_NOT_FOUND;
        String actualMessage = exception.getMessage();
        assertTrue(actualMessage.contains(expectedMessage));
    }

    @Test
    void testAddQuestionFailNullInput() {

        UUID polId = polIds[1];
        String text = "Test 1";

        Exception exception = assertThrows(DomainException.class, () -> {
            personalQuestionService.addQuestion(null, text);
            commitAndCreateNewTransaction(); // required for the checks below
        });
        
        String expectedMessage = PersonalQuestionService.INVALID_INPUT;
        String actualMessage = exception.getMessage();
        assertTrue(actualMessage.contains(expectedMessage));

        Exception exception2 = assertThrows(DomainException.class, () -> {
            personalQuestionService.addQuestion(polId, null);
            commitAndCreateNewTransaction(); // required for the checks below
        });

        String expectedMessage2 = PersonalQuestionService.INVALID_INPUT;
        String actualMessage2 = exception2.getMessage();
        assertTrue(actualMessage2.contains(expectedMessage2));

        int numQuestions = politicianRepository.findById(polId).get().getPersonalQuestions().size();
        assertEquals(0, numQuestions);
        
    }    

    @Test
    void testGetUpvotes() {

        UUID polId = polIds[2];
        String text = "Test 2";

        Politician politician = politicianRepository.findById(polId).get();
        assertEquals(0, politician.getPersonalQuestions().size());

        try {
            personalQuestionService.addQuestion(polId, text);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below

        politician = politicianRepository.findById(polId).get();
        assertEquals(1, politician.getPersonalQuestions().size());

        PersonalQuestion q = getPersonalQuestion(polId, text);
        long upvotes = q.getUpvotes();
        assertEquals(0, upvotes);

    }

    @Test
    void testUpvoteQuestion1Upvote() {

        UUID polId = polIds[3];
        String text = "Test 3";
        String ip = "127.0.0.1";

        Politician politician = politicianRepository.findById(polId).get();
        assertEquals(0, politician.getPersonalQuestions().size());

        try {
            personalQuestionService.addQuestion(polId, text);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below

        politician = politicianRepository.findById(polId).get();
        assertEquals(1, politician.getPersonalQuestions().size());

        PersonalQuestion q = getPersonalQuestion(polId, text);
        long upvotes = q.getUpvotes();
        assertEquals(0, upvotes);

        long methodReturn = -1;
        try {
            methodReturn = personalQuestionService.upvoteQuestion(q.getId(), ip);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below
        assertEquals(1, methodReturn);

        q = getPersonalQuestion(polId, text);
        long upvotesAfter = q.getUpvotes();
        assertEquals(1, upvotesAfter);
        assertEquals(upvotes + 1, upvotesAfter);
    }


    @Test

    void testUpvoteQuestion10Upvotes() throws DomainException, InterruptedException {

        UUID polId = polIds[4];
        String text = "Test 4";
        String ip = "127.0.0.1";

        Politician politician = politicianRepository.findById(polId).get();
        assertEquals(0, politician.getPersonalQuestions().size());

        try {
            personalQuestionService.addQuestion(polId, text);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below

        politician = politicianRepository.findById(polId).get();
        assertEquals(1, politician.getPersonalQuestions().size());

        PersonalQuestion q = getPersonalQuestion(polId, text);
        long upvotes = q.getUpvotes();
        UUID questionId = q.getId();
        assertEquals(0, upvotes);

        int numThreads = 10;
        UpvoteThread[] threads = new UpvoteThread[numThreads];
        for (int i = 0; i < numThreads; i++) {
            // launch 10 threads each doing 10 iterations
            threads[i] = new UpvoteThread(personalQuestionService, questionId, "Thread["+i+"]", ip);
            
            try {
                threads[i].start();
            } catch (Exception e) {
                fail();
            }
        }
        for (int i = 0; i < numThreads; i++) {
            threads[i].join();
            commitAndCreateNewTransaction(); // required for the checks below
        }

        PersonalQuestion q2 = getPersonalQuestion(polId, text);
        assertEquals(questionId, q2.getId());
        assertEquals(numThreads, q2.getUpvotes());

    }



    /**
     * Upvoted thread used to test multithreaded upvoting
     */
    private class UpvoteThread extends Thread {

        private PersonalQuestionService pqs;
        private UUID questionId;
        private String ip;

        public UpvoteThread(PersonalQuestionService pqs, UUID questionId, String threadName, String ip){
            super(threadName);
            this.pqs = pqs;
            this.questionId = questionId;
            this.ip = ip;
        }
    
        @Override
        public void run() {
            
            try {
                pqs.upvoteQuestion(questionId, ip);
            } catch (DomainException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                throw new RuntimeException(e);
            }
        }
    }

    @Test
    void testUpvoteQuestionFailAlreadyUpvoted() {

        UUID polId = polIds[5];
        String text = "Test 5";
        String ip = "127.0.0.1";

        Politician politician = politicianRepository.findById(polId).get();
        assertEquals(0, politician.getPersonalQuestions().size());

        try {
            personalQuestionService.addQuestion(polId, text);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below

        politician = politicianRepository.findById(polId).get();
        assertEquals(1, politician.getPersonalQuestions().size());

        PersonalQuestion q = getPersonalQuestion(polId, text);
        UUID qId = q.getId();
        long upvotes = q.getUpvotes();
        assertEquals(0, upvotes);

        long methodReturn = -1;
        try {
            methodReturn = personalQuestionService.upvoteQuestion(qId, ip);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below
        assertEquals(1, methodReturn);

        q = getPersonalQuestion(polId, text);
        long upvotesAfter = q.getUpvotes();
        assertEquals(1, upvotesAfter);
        assertEquals(upvotes + 1, upvotesAfter);

        Exception exception = assertThrows(DomainException.class, () -> {
            personalQuestionService.upvoteQuestion(qId, ip);
            commitAndCreateNewTransaction(); // required for the checks below
        });    
    
        String expectedMessage = PersonalQuestionService.ALREADY_UPVOTED;
        String actualMessage = exception.getMessage();
        assertTrue(actualMessage.contains(expectedMessage));

        q = getPersonalQuestion(polId, text);
        upvotesAfter = q.getUpvotes();
        assertEquals(1, upvotesAfter);
        assertEquals(upvotes + 1, upvotesAfter);
    }

    @Test
    void testUpvoteQuestionFailRandomQuestionUUID() {

        UUID polId = polIds[6];
        String text = "Test 6";
        String ip = "127.0.0.1";

        Politician politician = politicianRepository.findById(polId).get();
        assertEquals(0, politician.getPersonalQuestions().size());

        try {
            personalQuestionService.addQuestion(polId, text);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below

        politician = politicianRepository.findById(polId).get();
        assertEquals(1, politician.getPersonalQuestions().size());

        PersonalQuestion q = getPersonalQuestion(polId, text);

        UUID qId = UUID.randomUUID();

        Exception exception = assertThrows(DomainException.class, () -> {
            personalQuestionService.upvoteQuestion(qId, ip);
            commitAndCreateNewTransaction(); // required for the checks below
        });    
    
        String expectedMessage = PersonalQuestionService.PERSONAL_QUESTION_NOT_FOUND;
        String actualMessage = exception.getMessage();
        assertTrue(actualMessage.contains(expectedMessage));

        q = getPersonalQuestion(polId, text);
        long upvotesAfter = q.getUpvotes();
        assertEquals(0, upvotesAfter);
    }

    @Test
    void testUpvoteQuestionFailNullInput() {

        UUID polId = polIds[7];
        String text = "Test 7";
        String ip = "127.0.0.1";

        Politician politician = politicianRepository.findById(polId).get();
        assertEquals(0, politician.getPersonalQuestions().size());

        try {
            personalQuestionService.addQuestion(polId, text);
        } catch (DomainException e) {
            fail();
        }
        commitAndCreateNewTransaction(); // required for the checks below

        politician = politicianRepository.findById(polId).get();
        assertEquals(1, politician.getPersonalQuestions().size());

        // null question UUID
        Exception exception = assertThrows(DomainException.class, () -> {
            UUID qId = null;
            personalQuestionService.upvoteQuestion(qId, ip);
            commitAndCreateNewTransaction(); // required for the checks below
        });    
    
        String expectedMessage = PersonalQuestionService.INVALID_INPUT;
        String actualMessage = exception.getMessage();
        assertTrue(actualMessage.contains(expectedMessage));

        // null ip String
        Exception exception2 = assertThrows(DomainException.class, () -> {
            PersonalQuestion q = getPersonalQuestion(polId, text);
            UUID qId = q.getId();
            personalQuestionService.upvoteQuestion(qId, null);
            commitAndCreateNewTransaction(); // required for the checks below
        });    

        String expectedMessage2 = PersonalQuestionService.INVALID_INPUT;
        String actualMessage2 = exception2.getMessage();
        assertTrue(actualMessage2.contains(expectedMessage2));

        PersonalQuestion q = getPersonalQuestion(polId, text);
        long upvotesAfter = q.getUpvotes();
        assertEquals(0, upvotesAfter);
    }

}
