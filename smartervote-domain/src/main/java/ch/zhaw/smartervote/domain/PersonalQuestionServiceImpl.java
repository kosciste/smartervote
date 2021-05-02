package ch.zhaw.smartervote.domain;

import java.util.Optional;
import java.util.Set;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ch.zhaw.smartervote.contract.PersonalQuestionService;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.repositories.iface.PersonalQuestionRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.PoliticianRepository;

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

    @Autowired
    public PersonalQuestionServiceImpl(PoliticianRepository politicianRepository, PersonalQuestionRepository personalQuestionRepository) {
        this.politicianRepository = politicianRepository;
        this.personalQuestionRepository = personalQuestionRepository;
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

        personalQuestionRepository.insert(entityToInsert);
        
        return true;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean upvoteQuestion(UUID questionId, String ipAddress) {
        // TODO Auto-generated method stub
        return false;
    }
    
}
