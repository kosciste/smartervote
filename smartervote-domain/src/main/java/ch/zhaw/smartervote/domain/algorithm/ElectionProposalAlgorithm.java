package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

/**
 * This class calculates the election match of each politician based on the answered questions of the user. This is a
 * prototype implementation of the algorithm. The full algorithm will be implemented in the beta release.
 *
 * @author Raphael Krebs
 */
@Component("electionProposalAlgorithm")
public class ElectionProposalAlgorithm {

    /**
     * Calculates the results to be filled into tha database. In case an question was not answered by the politician,
     * the maximal possible error is calculated for that answer.
     *
     * @param politicianAnswers the politician.
     * @param answeredQuestions the answered questions and their weighted subjects.
     * @return the proposal result scores for each politician.
     */
    public int calculateResult(List<QuestionAnswer> politicianAnswers, Map<SubjectTO, Set<QuestionTO>> answeredQuestions) {
        double error = 0;
        double maxError = 0;
        for (Map.Entry<SubjectTO, Set<QuestionTO>> entry : answeredQuestions.entrySet()) {
            SubjectTO subject = entry.getKey();
            Set<QuestionTO> questions = entry.getValue();
            SubjectWeight weight = subject.getWeight();
            if (weight != SubjectWeight.NOT_INTERESTED) {
                error += calculateError(politicianAnswers, questions) * weight.ordinal();
                maxError += questions.stream()
                        .map(question -> getTotalMaxError(subject, question))
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
    private double calculateError(List<QuestionAnswer> politician, Set<QuestionTO> questions) {
        double error = 0;
        for (QuestionTO question : questions) {
            Optional<QuestionAnswer> politicianAnswerOptional = politician.stream()
                    .filter(pa -> pa.getQuestion()
                            .getId()
                            .equals(question.getId()))
                    .findFirst();
            if (politicianAnswerOptional.isEmpty()) {
                error += Math.pow(getMaxError(question.getAnswer()), 2);
            } else {
                int politicianAnswer = politicianAnswerOptional.get().getAnswer();
                if (politicianAnswer != QuestionAnswerMatcher.NO_ANSWER) {
                    error += Math.pow(question.getAnswer() - politicianAnswer, 2);
                }
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
    private int getTotalMaxError(SubjectTO subject, QuestionTO question) {
        int answer = question.getAnswer();
        int weight = subject.getWeight().ordinal();
        int maxError = getMaxError(answer);
        return (int) Math.pow(maxError * weight, 2);
    }

    private int getMaxError(int answer) {
        int maxError;
        if (answer == 2 || answer == 3) maxError = 2;
        else maxError = 3;
        return maxError;
    }

}
