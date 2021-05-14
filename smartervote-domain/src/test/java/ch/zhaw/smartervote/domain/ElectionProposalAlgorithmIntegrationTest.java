package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.domain.mapping.MapPolitician;
import ch.zhaw.smartervote.domain.mapping.MapQuestion;
import ch.zhaw.smartervote.domain.mapping.MapQuestionSubject;
import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import ch.zhaw.smartervote.persistency.entities.ProposalResult;
import ch.zhaw.smartervote.persistency.entities.ProposalResultScore;
import ch.zhaw.smartervote.persistency.repositories.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class})
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class ElectionProposalAlgorithmIntegrationTest extends AbstractIntegrationTest {

    private final UUID electionId = UUID.fromString("004c25b6-0000-0000-0000-4b3fd10e9c00");

    @Autowired
    ElectionProposalService electionProposalService;

    @Autowired
    PoliticianRepository politicianRepository;

    @Autowired
    QuestionRepository questionRepository;

    @Autowired
    QuestionSubjectRepository questionSubjectRepository;

    @Autowired
    ProposalResultRepository proposalResultRepository;

    @Autowired
    ProposalResultScoreRepository proposalResultScoreRepository;

    private PoliticianTO politicianYesHess;

    private PoliticianTO politicianKlaraNeinsager;

    private PoliticianTO politicianFaulerHans;

    private QuestionTO question1;

    private QuestionTO question2;

    private QuestionTO question3;

    private SubjectTO subject1;

    private SubjectTO subject2;

    private Map<SubjectTO, List<QuestionTO>> questionSubjects;

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
     * Tests if a proposal result is written to the database.
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
     * Tests if for each politician a valid proposal result was calculated and written to the databsase.
     */
    @Test
    void testAllPoliticiansWrittenToDatabase() {
        int expectedPoliticianCount = 3;
        Set<ProposalResultScore> proposalResultScores = calculateElection(questionSubjects);
        assertEquals(expectedPoliticianCount, proposalResultScores.size());
        assertTrue(proposalResultScores.stream().anyMatch(p -> p.getPolitician().getId() == politicianYesHess.getId()));
        assertTrue(proposalResultScores.stream().anyMatch(p -> p.getPolitician().getId() == politicianKlaraNeinsager.getId()));
        assertTrue(proposalResultScores.stream().anyMatch(p -> p.getPolitician().getId() == politicianFaulerHans.getId()));

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
        Set<ProposalResultScore> proposalResultScores = calculateElection(questionSubjects);
        assertTrue(proposalResultScores.stream()
                .allMatch(p -> p.getMatchingScore() >= minScore && p.getMatchingScore() <= maxScore));
        questionSubjects.forEach((key, value) -> value.forEach(q -> q.setAnswer(maxAnswer)));
        proposalResultScores = calculateElection(questionSubjects);
        assertTrue(proposalResultScores.stream()
                .allMatch(p -> p.getMatchingScore() >= minScore && p.getMatchingScore() <= maxScore));
    }


    /**
     * If a politician answers all answers the same as the user, the matching score must have the maximal value, which
     * is 100. In this test, all three user answers are set to 0. The matching score is then compared with the
     * politician Klara Neinsager, who has answered all three questions with 0 as well. We expect her matching score to
     * be 100.
     */
    @Test
    void testProposalCalculationMaxScore() {
        int minAnswer = 0;
        int ExpectedKlaraNeinsagerScore = 100;
        questionSubjects.forEach((key, value) -> value.forEach(q -> q.setAnswer(minAnswer)));
        List<ProposalResultScore> proposalResultScores = new ArrayList<>(calculateElection(questionSubjects));
        Optional<ProposalResultScore> resultKlaraNeinsager = proposalResultScores.stream()
                .filter(s -> s.getPolitician().getId().equals(politicianKlaraNeinsager.getId())).findFirst();
        assertTrue(resultKlaraNeinsager.isPresent());
        assertEquals(ExpectedKlaraNeinsagerScore, resultKlaraNeinsager.get().getMatchingScore());
    }

    /**
     * If the politicians answers are as far away as possible from the users answers, the politician should get the
     * worst possible matching score, which is 0. In this test, all three user answers are set to 0. The matching score
     * is then compared with the politician Yes Hess, who has answered all three questions with 4 (The worst possible
     * answers). We expect her matching score to be 0.
     */
    @Test
    void testProposalCalculationMinScore() {
        int minAnswer = 0;
        int ExpectedYesHessScore = 0;
        questionSubjects.forEach((key, value) -> value.forEach(q -> q.setAnswer(minAnswer)));
        List<ProposalResultScore> proposalResultScores = new ArrayList<>(calculateElection(questionSubjects));
        Optional<ProposalResultScore> resultYesHess = proposalResultScores.stream()
                .filter(s -> s.getPolitician().getId().equals(politicianYesHess.getId())).findFirst();
        assertTrue(resultYesHess.isPresent());
        assertEquals(ExpectedYesHessScore, resultYesHess.get().getMatchingScore());
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

    private Set<ProposalResultScore> calculateElection(Map<SubjectTO, List<QuestionTO>> questionSubjects) {
        UUID proposalId = null;
        try {
            proposalId = electionProposalService.calculateElectionProposal(electionId, questionSubjects);
        } catch (DomainException e) {
            fail(e.getMessage());
        }
        Optional<ProposalResult> proposalResultOptional = proposalResultRepository.findById(proposalId);
        assertTrue(proposalResultOptional.isPresent());
        return proposalResultOptional.get().getProposalResultScores();
    }

}
