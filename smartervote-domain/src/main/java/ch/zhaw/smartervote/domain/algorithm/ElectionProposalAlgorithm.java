package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/**
 * This class calculates the election match of each politician based on the answered questions of the user. This is a
 * prototype implementation of the algorithm. The full algorithm will be implemented in the beta release.
 *
 * @author Raphael Krebs
 */
@Component("electionProposalAlgorithm")
public class ElectionProposalAlgorithm {

    /**
     * The builder to create the proposal result.
     */
    private final ProposalResultBuilder proposalResultBuilder;

    /**
     * The question answer matcher, to get the answers of the politicians.
     */
    private final QuestionAnswerMatcher questionAnswerMatcher;

    @Autowired
    public ElectionProposalAlgorithm(ProposalResultBuilder proposalResultBuilder,
                                     QuestionAnswerMatcher questionAnswerMatcher) {
        this.proposalResultBuilder = proposalResultBuilder;
        this.questionAnswerMatcher = questionAnswerMatcher;
    }

    /**
     * Calculates the election match based on the answered questions of the user. This is a prototype implementation of
     * the algorithm. The full algorithm will be implemented in the beta release.
     *
     * @param politicians the politician for which the matching should be determined.
     * @param questions the answered questions.
     * @return the UUID of the result.
     */
    public UUID calculate(List<PoliticianTO> politicians, Map<SubjectTO, Set<QuestionTO>> questions) {
        for (PoliticianTO politician : politicians) {
            int score = calculateResult(politician, questions);
            proposalResultBuilder.addScore(politician, score);
        }
        proposalResultBuilder.writeResults();
        return proposalResultBuilder.getProposalResultId();
    }

    /**
     * Calculates the results to be filled into tha database.
     *
     * @param politician the politician.
     * @param questionSubjects the answered questions and their weighted subjects.
     * @return the proposal result scores for each politician.
     */
    private int calculateResult(PoliticianTO politician, Map<SubjectTO, Set<QuestionTO>> questionSubjects) {
        double error = 0;
        double maxError = 0;
        for (Map.Entry<SubjectTO, Set<QuestionTO>> entry : questionSubjects.entrySet()) {
            SubjectTO subject = entry.getKey();
            Set<QuestionTO> questions = entry.getValue();
            SubjectWeight weight = subject.getWeight();
            if (weight != SubjectWeight.NOT_INTERESTED) {
                error += calculateError(politician, questions) * weight.ordinal();
                maxError += questions.stream()
                        .map(question -> getMaxError(subject, question))
                        .reduce(0, Integer::sum);
            }
        }
        return (int) Math.round(Math.abs(((100 / maxError) * error) - 100));
    }

    /**
     * Calculates the squared error for a politician.
     *
     * @param politician the politician.
     * @param questions the answered questions of the users.
     * @return the squared error for the politician.
     */
    private double calculateError(PoliticianTO politician, Set<QuestionTO> questions) {
        double error = 0;
        for (QuestionTO question : questions) {
            int politicianAnswer = questionAnswerMatcher.getPoliticianAnswer(politician.getId(), question.getId());
            if (politicianAnswer != QuestionAnswerMatcher.NO_ANSWER) {
                error += Math.pow(question.getAnswer() - politicianAnswer, 2);
            }
        }
        return error;
    }

    /**
     * Calculates the squared maximal possible error based on the answer of the user.
     *
     * @param subject the subject.
     * @param question the question.
     * @return the maximal error.
     */
    private int getMaxError(SubjectTO subject, QuestionTO question) {
        int maxError = 0;
        int answer = question.getAnswer();
        int weight = subject.getWeight().ordinal();
        if (answer == 2 || answer == 3) maxError += 2 * weight;
        else maxError += 3 * weight;
        return (int) Math.pow(maxError, 2);
    }

}
