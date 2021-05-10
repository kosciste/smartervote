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

        PersonalQuestion entityToInsert = new PersonalQuestion();

        entityToInsert.setPolitician(politician);
        entityToInsert.setText(questionText);

        personalQuestionRepository.save(entityToInsert);
        
        return true;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public long upvoteQuestion(UUID questionId, String ipAddress) throws DomainException {
        Optional<PersonalQuestion> questionOptional = personalQuestionRepository.findById(questionId);
        if (questionOptional.isEmpty()) throw new DomainException("Personal question not found.");

        PersonalQuestion personalQuestion = questionOptional.get();
        long newUpvotes = personalQuestion.getUpvotes() + 1;
        personalQuestion.setUpvotes(newUpvotes);

        PersonalQuestionUpvote personalQuestionUpvote = new PersonalQuestionUpvote();
        personalQuestionUpvote.setIpAddress(ipAddress);
        personalQuestionUpvote.setPersonalQuestion(personalQuestion);

        personalQuestionRepository.save(personalQuestion);
        personalQuestionUpvoteRepository.save(personalQuestionUpvote);

        return newUpvotes;
    }
    
}
