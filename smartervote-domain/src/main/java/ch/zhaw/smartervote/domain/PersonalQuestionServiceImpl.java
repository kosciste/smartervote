package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PersonalQuestionService;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestionUpvote;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.repositories.PersonalQuestionRepository;
import ch.zhaw.smartervote.persistency.repositories.PersonalQuestionUpvoteRepository;
import ch.zhaw.smartervote.persistency.repositories.PoliticianRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * This class implements the PersonalQuestionService functions
 *
 * @author Stefan Teodoropol
 */
@Component("personalQuestionService")
public class PersonalQuestionServiceImpl implements PersonalQuestionService {

    /**
     * The repository for politicians. Used to findById().
     */
    private final PoliticianRepository politicianRepository;

    /**
     * The repository for personal questions. Used to insert().
     */
    private final PersonalQuestionRepository personalQuestionRepository;

    /**
     * Repository to create personal question upvote objects.
     */
    private final PersonalQuestionUpvoteRepository personalQuestionUpvoteRepository;

    @Autowired
    public PersonalQuestionServiceImpl(PoliticianRepository politicianRepository,
                                       PersonalQuestionRepository personalQuestionRepository,
                                       PersonalQuestionUpvoteRepository personalQuestionUpvoteRepository) {
        this.politicianRepository = politicianRepository;
        this.personalQuestionRepository = personalQuestionRepository;
        this.personalQuestionUpvoteRepository = personalQuestionUpvoteRepository;
    }


    /**
     * {@inheritDoc}
     */
    @Override
    public boolean addQuestion(UUID politicianId, String questionText) {
        Optional<Politician> queryResult = politicianRepository.findById(politicianId);
        if (queryResult.isEmpty()) return false; // false if politician doesnt exist

        Politician politician = queryResult.get();

        PersonalQuestion personalQuestion = new PersonalQuestion();
        personalQuestion.setPolitician(politician);
        personalQuestion.setText(questionText);

        personalQuestionRepository.save(personalQuestion);

        return true;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public long upvoteQuestion(UUID questionId, String ipAddress) throws DomainException {
        Optional<PersonalQuestion> questionOptional = personalQuestionRepository.findById(questionId);
        if (questionOptional.isEmpty()) throw new DomainException("Personal question not found.");

        List<PersonalQuestion> upvotedPersonalQuestions =
                personalQuestionRepository.findPersonalQuestionsByIdsAndIpAddress(
                        Collections.singleton(questionOptional.get().getId()), ipAddress);
        if (upvotedPersonalQuestions.size() > 0) {
            throw new DomainException("Question was already upvoted by given ip address.");
        }

        int updated = personalQuestionRepository.upvotePersonalQuestion(questionId);
        if (updated == 1) {
            questionOptional = personalQuestionRepository.findById(questionId);
            PersonalQuestionUpvote personalQuestionUpvote = new PersonalQuestionUpvote();
            personalQuestionUpvote.setIpAddress(ipAddress);
            personalQuestionUpvote.setPersonalQuestion(questionOptional.get());
            personalQuestionUpvoteRepository.save(personalQuestionUpvote);

            return questionOptional.get().getUpvotes();

        }

        throw new DomainException("Upvote failed.");
    }

}
