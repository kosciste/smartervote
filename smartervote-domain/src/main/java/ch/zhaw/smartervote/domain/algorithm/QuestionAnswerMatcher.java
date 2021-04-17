package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionAnswerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Optional;
import java.util.UUID;

/**
 * The question answer matcher matches a politician with a question, to get the answer of the politician.
 */
@Component("questionAnswerMatcher")
public class QuestionAnswerMatcher {

    /**
     * The value returned by {@link QuestionAnswerMatcher#getPoliticianAnswer(UUID, UUID)} if no match is found.
     */
    public static int NO_ANSWER = -1;

    private final QuestionAnswerRepository questionAnswerRepository;

    @Autowired
    public QuestionAnswerMatcher(QuestionAnswerRepository questionAnswerRepository) {
        this.questionAnswerRepository = questionAnswerRepository;
    }

    /**
     * Matches a politician with a question, and returns the answer of the politician.
     *
     * @param politicianId the UUID of the politician
     * @param questionId the UUID of the question
     * @return the answer of the politician.
     */
    public int getPoliticianAnswer(UUID politicianId, UUID questionId) {
        Optional<QuestionAnswer> questionAnswerOptional = questionAnswerRepository.
                findPoliticianQuestion(politicianId, questionId);
        if (questionAnswerOptional.isEmpty()) return NO_ANSWER;
        return questionAnswerOptional.get().getAnswer();
    }

}
