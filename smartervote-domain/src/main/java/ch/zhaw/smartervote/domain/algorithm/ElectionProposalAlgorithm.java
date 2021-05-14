package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * This class calculates the election match for a politician based on the answered questions of the user.
 *
 * @author Raphael Krebs
 */
@Component
public class ElectionProposalAlgorithm {

    public static int NO_ANSWER = 2;

    /**
     * Calculates matching score based on the answers of a politician and the answers of the user. In case an question
     * was not answered by the politician, the maximal possible error is calculated for that answer.
     *
     * @param politicianAnswers the politicians answers.
     * @param answeredQuestions the answered questions and their weighted subjects.
     * @return the proposal result score for the politician.
     */
    public int calculateResult(List<QuestionAnswer> politicianAnswers, Map<SubjectTO, List<QuestionTO>> answeredQuestions) {
        double error = 0;
        double maxError = 0;
        for (Map.Entry<SubjectTO, List<QuestionTO>> entry : answeredQuestions.entrySet()) {
            SubjectTO subject = entry.getKey();
            List<QuestionTO> questions = entry.getValue();
            SubjectWeight weight = subject.getWeight();
            if (weight != SubjectWeight.NOT_INTERESTED) {
                error += calculateError(politicianAnswers, questions) * weight.ordinal();
                maxError += questions.stream().filter(q -> q.getAnswer() != NO_ANSWER)
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
    private double calculateError(List<QuestionAnswer> politician, List<QuestionTO> questions) {
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
                if (question.getAnswer() != NO_ANSWER) {
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
        return (int) Math.pow(maxError, 2) * weight;
    }

    /**
     * Calculates the maximal possible deviation from an answer.
     *
     * @param answer the answer value
     * @return the maximal possible deviation from the answer
     */
    private int getMaxError(int answer) {
        int maxError;
        if (answer == 2 || answer == 3) maxError = 2;
        else maxError = 3;
        return maxError;
    }

}
