package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.domain.mapping.MapPolitician;
import ch.zhaw.smartervote.domain.mapping.MapQuestion;
import ch.zhaw.smartervote.domain.mapping.MapQuestionSubject;
import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;
import ch.zhaw.smartervote.persistency.repositories.ProposalResultRepository;
import ch.zhaw.smartervote.persistency.repositories.QuestionRepository;
import ch.zhaw.smartervote.persistency.repositories.QuestionSubjectRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

/**
 * <p>
 * These integration tests verify the election proposal of the smarter vote algorithm. The election proposal is
 * calculated by calling the {@link ElectionProposalService#calculateElectionProposal(UUID, Map)} method.
 * </p><p>
 * For this integration test, a separate election, "Algotestwahlen", with its own questions and politicians is used.
 * There are two subjects in this election. "Subject 1" contains the questions "Queston 1" and "Question 2", and
 * "Subject 2" contains the "Question 3".
 * </p>
 * The three politicians for the tests are setup as follows:
 * <ul>
 *     <li>Yes Hess: Answered all three questions with Yes (4)</li>
 *     <li>Klara Neinsager: Answered all three questions with no (0)</li>
 *     <li>Fauler Hans: Only answered question 1 and 2. Both where answered with no (0)</li>
 *     <li>Max Mix: Gave a different answer for each question (Question 1: 1, Question 2: 2, Question 3: 3)</li>
 * </ul>
 */
@DataJpaTest
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class})
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class ElectionProposalAlgorithmIntegrationTest extends AbstractIntegrationTest {

    private final UUID electionId = UUID.fromString("004c25b6-0000-0000-0000-4b3fd10e9c00");

    /**
     * The election proposal service.
     */
    @Autowired
    private ElectionProposalService electionProposalService;

    /**
     * The politician repository.
     */
    @Autowired
    private PoliticianRepository politicianRepository;

    /**
     * The question repository.
     */
    @Autowired
    private QuestionRepository questionRepository;

    /**
     * The question subject repository.
     */
    @Autowired
    private QuestionSubjectRepository questionSubjectRepository;

    /**
     * The proposal result repository.
     */
    @Autowired
    private ProposalResultRepository proposalResultRepository;

    /**
     * The politician Yes Hess is a yes sayer. All his answers have the maximum value (4).
     */
    private PoliticianTO politicianYesHess;

    /**
     * The politician Klara Neinsager says no to everything. All her answers have the minimal value (0).
     */
    private PoliticianTO politicianKlaraNeinsager;

    /**
     * The politician Faluer Hans is lazy, so he only answered two of the three questions. The two answered question
     * have the minimal value (0).
     */
    private PoliticianTO politicianFaulerHans;

    /**
     * The politician Max Mix gave a mixed answer. (Question 1: 1, Question 2: 2, Question 3: 3)
     */
    private PoliticianTO politicianMaxMix;

    /**
     * The question 1 belonging to subject 1.
     */
    private QuestionTO question1;

    /**
     * The question 2 belonging to subject 1.
     */
    private QuestionTO question2;

    /**
     * The question 3 belonging to subject 2.
     */
    private QuestionTO question3;

    /**
     * The subject 1, which contains the questions 1 and 2.
     */
    private SubjectTO subject1;

    /**
     * The subject 2 which contains the question 3.
     */
    private SubjectTO subject2;

    /**
     * A map with the subjects and the answered questions.
     */
    private Map<SubjectTO, List<QuestionTO>> questionSubjects;

    /**
     * Sets up the test data before each test.
     */
    @BeforeEach
    void setupTestData() {
        question1 = MapQuestion.toTransferObject(
                questionRepository.findById(UUID.fromString("a335650d-06b4-4e92-ba77-d5f8964cebaa")).get());
        question2 = MapQuestion.toTransferObject(
                questionRepository.findById(UUID.fromString("b335650d-06b4-4e92-ba77-d5f8964cebaa")).get());
        question3 = MapQuestion.toTransferObject(
                questionRepository.findById(UUID.fromString("c335650d-06b4-4e92-ba77-d5f8964cebaa")).get());
        politicianYesHess = MapPolitician.toTransferObject(
                politicianRepository.findById(UUID.fromString("ab1d763b-ca76-4ac5-81ef-a98d4f34eabc")).get());
        politicianKlaraNeinsager = MapPolitician.toTransferObject(
                politicianRepository.findById(UUID.fromString("bb1d763b-ca76-4ac5-81ef-a98d4f34eabc")).get());
        politicianFaulerHans = MapPolitician.toTransferObject(
                politicianRepository.findById(UUID.fromString("cb1d763b-ca76-4ac5-81ef-a98d4f34eabc")).get());
        politicianMaxMix = MapPolitician.toTransferObject(
                politicianRepository.findById(UUID.fromString("db1d763b-ca76-4ac5-81ef-a98d4f34eabc")).get());
        subject1 = MapQuestionSubject.toTransferObject(
                questionSubjectRepository.findById(UUID.fromString("00f718e8-29db-4274-8885-23a6c64e5d00")).get());
        subject2 = MapQuestionSubject.toTransferObject(
                questionSubjectRepository.findById(UUID.fromString("10f718e8-29db-4274-8885-23a6c64e5d00")).get());
        questionSubjects = new HashMap<>();
        List<QuestionTO> questions1 = new ArrayList<>();
        questions1.add(question1);
        questions1.add(question2);
        questionSubjects.put(subject1, questions1);
        List<QuestionTO> questions2 = new ArrayList<>();
        questions2.add(question3);
        questionSubjects.put(subject2, questions2);
    }

    /**
     * Tests if the proposal result is written to the database.
     */
    @Test
    void testProposalWrittenToDatabase() {
        UUID proposalId = null;
        try {
            proposalId = electionProposalService.calculateElectionProposal(electionId, questionSubjects);
        } catch (DomainException e) {
            fail(e.getMessage());
        }
        Optional<ProposalResult> proposalResultOptional = proposalResultRepository.findById(proposalId);
        assertTrue(proposalResultOptional.isPresent());
        Set<ProposalResultScore> proposalResultScores = proposalResultOptional.get().getProposalResultScores();
        assertFalse(proposalResultScores.isEmpty());
    }

    /**
     * Tests that a {@link DomainException} is thrown, when an invalid election id is passed.
     */
    @Test
    void testInvalidElectionId() {
        UUID invalidElectionId = UUID.fromString("8ae0f13d-1001-1001-1001-672e6ccc0edc");
        assertThrows(DomainException.class,
                () -> electionProposalService.calculateElectionProposal(invalidElectionId, questionSubjects));
    }

    /**
     * Tests that a {@link DomainException} is thrown, when an invalid subject id is passed. To verify this, a subject
     * with an invalid id is passed to the election proposal service.
     */
    @Test
    void testInvalidSubject() {
        SubjectTO invalidSubject =
                new SubjectTO(UUID.fromString("8ae0f13d-1001-1001-1001-672e6ccc0edc"), "", SubjectWeight.NORMAL);
        questionSubjects.remove(subject2);
        questionSubjects.put(invalidSubject, Collections.singletonList(question3));
        assertThrows(DomainException.class,
                () -> electionProposalService.calculateElectionProposal(electionId, questionSubjects));
    }

    /**
     * Tests if for each politician a valid proposal result was calculated. To verify this, we check if we have three
     * result scores, and if each politician has a score associated to him/her.
     */
    @Test
    void testAllPoliticiansWrittenToDatabase() {
        int expectedProposalResultCount = 4;
        List<ProposalResultScore> proposalResultScores = calculateElection(questionSubjects);
        assertEquals(expectedProposalResultCount, proposalResultScores.size());
        assertTrue(proposalResultScores.stream().anyMatch(p -> p.getPolitician().getId() == politicianYesHess.getId()));
        assertTrue(proposalResultScores.stream().anyMatch(p -> p.getPolitician().getId() == politicianKlaraNeinsager.getId()));
        assertTrue(proposalResultScores.stream().anyMatch(p -> p.getPolitician().getId() == politicianFaulerHans.getId()));
        assertTrue(proposalResultScores.stream().anyMatch(p -> p.getPolitician().getId() == politicianMaxMix.getId()));

    }

    /**
     * Calculates the best and worst possible scores, and makes sure they are valid i.e. 0 <= score <= 100. There are
     * two politicians that voted all 3 questions with the minimum answer, respectively the maximum answer. By answering
     * all questions with the minimum and maximum possible value, we test the edge cases.
     */
    @Test
    void testValidProposalResultScore() {
        int minScore = 0;
        int maxScore = 100;
        int minAnswer = 0;
        int maxAnswer = 4;
        questionSubjects.forEach((key, value) -> value.forEach(q -> q.setAnswer(minAnswer)));
        List<ProposalResultScore> proposalResultScores = calculateElection(questionSubjects);
        assertTrue(proposalResultScores.stream()
                .allMatch(p -> p.getMatchingScore() >= minScore && p.getMatchingScore() <= maxScore));
        questionSubjects.forEach((key, value) -> value.forEach(q -> q.setAnswer(maxAnswer)));
        proposalResultScores = calculateElection(questionSubjects);
        assertTrue(proposalResultScores.stream()
                .allMatch(p -> p.getMatchingScore() >= minScore && p.getMatchingScore() <= maxScore));
    }


    /**
     * If a politician answers all questions the same as the user, the matching score must have the maximal value, which
     * is 100. In this test, all three user answers are set to 0. The matching score is then compared with the
     * politician Klara Neinsager, who has answered all three questions with 0 as well. We expect her matching score to
     * be 100.
     */
    @Test
    void testProposalCalculationMaxScore() {
        int bestAnswer = 0;
        int ExpectedKlaraNeinsagerScore = 100;
        questionSubjects.forEach((key, value) -> value.forEach(q -> q.setAnswer(bestAnswer)));
        List<ProposalResultScore> proposalResultScores = new ArrayList<>(calculateElection(questionSubjects));
        ProposalResultScore resultKlaraNeinsager = getPoliticianScore(proposalResultScores, politicianKlaraNeinsager);
        assertEquals(ExpectedKlaraNeinsagerScore, resultKlaraNeinsager.getMatchingScore());
    }

    /**
     * If the politicians answers are as far away as possible from the users answers, the politician should get the
     * worst possible matching score, which is 0.
     * <p>
     * In this test, all three user answers are set to 0. The matching score is then compared with the politician Yes
     * Hess, who has answered all three questions with 4 (The worst possible answers). We expect her matching score to
     * be 0.
     */
    @Test
    void testProposalCalculationMinScore() {
        int worstAnswer = 0;
        int ExpectedYesHessScore = 0;
        questionSubjects.forEach((key, value) -> value.forEach(q -> q.setAnswer(worstAnswer)));
        List<ProposalResultScore> proposalResultScores = new ArrayList<>(calculateElection(questionSubjects));
        ProposalResultScore resultYesHess = getPoliticianScore(proposalResultScores, politicianYesHess);
        assertEquals(ExpectedYesHessScore, resultYesHess.getMatchingScore());
    }


    /**
     * If the answers of a user are closer to the answers of politician A than the ones of politician B, the matching
     * score of politician A must be better than the matching score of politician B. In this test we use the politician
     * Yes Hess, who answered all questions with 4, and Klara Neinsager, who answered all questions with 0. We answer
     * both questions with 3, therefore we expect the score of Yes Hess to be higher than the score of Klara Neinsager.
     */
    @Test
    void testClosestAnswersResultInHighestScore() {
        questionSubjects.remove(subject2);
        questionSubjects.get(subject1).forEach(a -> a.setAnswer(3));
        List<ProposalResultScore> proposalResultScores = new ArrayList<>(calculateElection(questionSubjects));
        ProposalResultScore betterMatch = getPoliticianScore(proposalResultScores, politicianYesHess);
        ProposalResultScore worseMatch = getPoliticianScore(proposalResultScores, politicianKlaraNeinsager);
        assertTrue(betterMatch.getMatchingScore() > worseMatch.getMatchingScore());

    }

    /**
     * If a subject is excluded by the user, it the questions of this subject should not be considered in the matching
     * score. To test if this is the case, we calculate the scores once with the subject2 marked as "not interested" and
     * once without the subject2. We expect that the score for the politicians is the same in both calculations.
     */
    @Test
    void testExcludedSubjectDontInfluenceScore() {
        questionSubjects.get(subject1).forEach(a -> a.setAnswer(3));
        question3.setAnswer(1);
        subject1.setWeight(SubjectWeight.NORMAL);
        subject2.setWeight(SubjectWeight.NOT_INTERESTED);
        List<ProposalResultScore> resultWithExcludedSubject = calculateElection(questionSubjects);
        questionSubjects.remove(subject2);
        List<ProposalResultScore> resultWithoutSubject = calculateElection(questionSubjects);
        assertEquals(getPoliticianScore(resultWithoutSubject, politicianYesHess).getMatchingScore(),
                getPoliticianScore(resultWithExcludedSubject, politicianYesHess).getMatchingScore());
        assertEquals(getPoliticianScore(resultWithoutSubject, politicianKlaraNeinsager).getMatchingScore(),
                getPoliticianScore(resultWithExcludedSubject, politicianKlaraNeinsager).getMatchingScore());
        assertEquals(getPoliticianScore(resultWithoutSubject, politicianFaulerHans).getMatchingScore(),
                getPoliticianScore(resultWithExcludedSubject, politicianFaulerHans).getMatchingScore());
    }

    /**
     * If a politician does not answer a question which the user answered, the score must be influenced negatively. To
     * verify this, we compare the answers of the politician Klara Neinsager with the ones of Fauler Hans. Fauler Hans
     * was lazy and did not answer one of the questions. For the other two questions he gave the same answers as Klara
     * Neinsager. Therefore we expect the matching score of Hans to be worse than the one of Klara.
     */
    @Test
    void testUnansweredQuestionByPoliticianResultsInWorseScore() {
        questionSubjects.get(subject1).forEach(a -> a.setAnswer(2));
        question3.setAnswer(2);
        subject1.setWeight(SubjectWeight.NORMAL);
        subject2.setWeight(SubjectWeight.NORMAL);
        List<ProposalResultScore> proposalResultScores = calculateElection(questionSubjects);
        assertTrue(getPoliticianScore(proposalResultScores, politicianFaulerHans).getMatchingScore() <
                getPoliticianScore(proposalResultScores, politicianKlaraNeinsager).getMatchingScore());
    }

    /**
     * If a subject is weighted higher than another subject, its answers must be weighed higher. To verify this, we pass
     * two subjects with one question each to the algorithm. The questions are answered in a way, that would result in
     * the same score for the politician Klara Neinsager and Yes Hess, if both subjects are weighted equally. By
     * weighting the subject containing the question closer to Klaras answer higher than the other, the matching score
     * of Klara should be higher of the score of Yes Hess.
     */
    @Test
    void testSubjectWeightInfluencesScore() {
        question1.setAnswer(3); // subject 1
        question3.setAnswer(1); // subject 2
        questionSubjects.get(subject1).remove(question2);
        subject1.setWeight(SubjectWeight.NORMAL);
        subject2.setWeight(SubjectWeight.NORMAL);
        List<ProposalResultScore> proposalResultScores = calculateElection(questionSubjects);
        assertEquals(getPoliticianScore(proposalResultScores, politicianYesHess).getMatchingScore(),
                getPoliticianScore(proposalResultScores, politicianKlaraNeinsager).getMatchingScore());

        subject2.setWeight(SubjectWeight.IMPORTANT);
        proposalResultScores = calculateElection(questionSubjects);
        assertTrue(getPoliticianScore(proposalResultScores, politicianYesHess).getMatchingScore() <
                getPoliticianScore(proposalResultScores, politicianKlaraNeinsager).getMatchingScore());
    }

    /**
     * <p>
     * In this test, we verify that the election proposal result has the intended value.<br> Our answers to the
     * questions are as follows: Question 1: 3, Question 2: 2, Question 3: 0<br> Max Mix answered the questions like
     * this: Question 1: 1, Question 2: 2, Question 3: 3<br><br>
     * </p>
     * <b>Calculation of expected result</b><br>
     * The algorithm must take the squared difference of the user and politician answers:<br> Answer 1: (3 - 1)^2 =
     * 4<br> Answer 2: User answered with 2 (Enthalten), so this question is ignored --> 0<br> Answer 3: (0 - 3)^2 =
     * 9<br><br> Next the weight for each question is applied, then all numbers are added together. The subject of
     * questions 1 and 2 has the weight normal (2), and the subject of question 3 has the weight important (3).<br> 4 *
     * 2 + 0 * 2 + 9 * 3 = 35 <br><br> To calculate the score, the worst possible politician answer for each of the user
     * answers is calculated. The formula for this is (user answer - worst possible answer)^2 * subject weight.<br>
     * Answer 1: The user answer was 3, so the worst possible politician answer would be 0: (3-0)^2 * 2 = 18 <br> Answer
     * 2: Question answered with "Enthalten" (2) by the user, so this question is ignored. --> 0<br> Answer 3: (4-0)^2 *
     * 3 = 48 (User answer: 0, Worst answer: 4)<br><br> The sum of the worst possible answers is the worst possible
     * error score that can be archived by a politician: 18 + 0 + 48 = 66 <br> To get a relative error in percentage we
     * use the following formula: (100 / maxError) * error : (100 / 66) * 35 = 53.03 <br> From the error percentage we
     * can get the matching percentage with abs(errorPercentage - 100) : 46.97 <br> Finally we round to the next
     * integer, to get the final matching score. We expect the matching score for the politician Max Mix to be 47.
     */
    @Test
    void testCorrectCalculation() {
        int expectedScore = 47;
        question1.setAnswer(3);
        question2.setAnswer(2);
        question3.setAnswer(0);
        subject1.setWeight(SubjectWeight.NORMAL);
        subject2.setWeight(SubjectWeight.IMPORTANT);
        List<ProposalResultScore> proposalResultScores = calculateElection(questionSubjects);
        assertEquals(expectedScore, getPoliticianScore(proposalResultScores, politicianMaxMix).getMatchingScore());
    }

    /**
     * Calculates an election.
     *
     * @param questionSubjects the question subjects.
     * @return the election proposal result.
     */
    private List<ProposalResultScore> calculateElection(Map<SubjectTO, List<QuestionTO>> questionSubjects) {
        UUID proposalId = null;
        try {
            proposalId = electionProposalService.calculateElectionProposal(electionId, questionSubjects);
        } catch (DomainException e) {
            fail(e.getMessage());
        }
        Optional<ProposalResult> proposalResultOptional = proposalResultRepository.findById(proposalId);
        assertTrue(proposalResultOptional.isPresent());
        return new ArrayList<>(proposalResultOptional.get().getProposalResultScores());
    }

    /**
     * Finds a politicians proposal result score.
     *
     * @param proposalResultScores the proposal result scores.
     * @param politician the politician to be found.
     * @return the politicians proposal result score.
     */
    private ProposalResultScore getPoliticianScore(List<ProposalResultScore> proposalResultScores, PoliticianTO politician) {
        Optional<ProposalResultScore> politicianScore = proposalResultScores.stream()
                .filter(s -> s.getPolitician().getId().equals(politician.getId())).findFirst();
        assertTrue(politicianScore.isPresent());
        return politicianScore.get();
    }

}
