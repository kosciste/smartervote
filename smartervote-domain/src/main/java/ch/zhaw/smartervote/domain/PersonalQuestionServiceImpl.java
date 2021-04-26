package ch.zhaw.smartervote.domain;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ch.zhaw.smartervote.contract.PersonalQuestionService;
import ch.zhaw.smartervote.contract.transferobject.PersonalQuestionTO;
import ch.zhaw.smartervote.domain.mapping.MapPersonalQuestion;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import ch.zhaw.smartervote.persistency.entities.Politician;
import ch.zhaw.smartervote.persistency.repositories.iface.PersonalQuestionRepository;
import ch.zhaw.smartervote.persistency.repositories.iface.PoliticianRepository;

/**
 * {@inheritDoc}
 * 
 * @author Stefan Teodoropol
 */
@Component("personalQuestionService")
public class PersonalQuestionServiceImpl implements PersonalQuestionService {

    private final PoliticianRepository politicianRepository;
    private final PersonalQuestionRepository personalQuestionRepository;

    @Autowired
    public PersonalQuestionServiceImpl(PoliticianRepository politicianRepository, PersonalQuestionRepository personalQuestionRepository) {
        this.politicianRepository = politicianRepository;
        this.personalQuestionRepository = personalQuestionRepository;
    }


    @Override
    public boolean addQuestion(UUID politicianId, String questionText) {
        Optional<Politician> queryResult = politicianRepository.findById(politicianId);
        if (queryResult.isEmpty()) return false; // false if politician doesnt exist

        Politician politician = queryResult.get();

        List<PersonalQuestion> politicianQuestions = personalQuestionRepository.findAll();
        for (PersonalQuestion q : politicianQuestions) {
            if (q.getText().equals(questionText)) return false; // false if question id already exists
            System.out.println("Checking: " + q.getId().toString() + " == " + questionText);
        }

        PersonalQuestion entityToInsert = new PersonalQuestion();

        entityToInsert.setPolitician(politician);
        entityToInsert.setText(questionText);

        personalQuestionRepository.insert(entityToInsert);
        
        return true;
    }

    @Override
    public boolean upvoteQuestion(UUID questionId, String ipAddress) {
        // TODO Auto-generated method stub
        return false;
    }


    @Override
    public Optional<PersonalQuestionTO> getQuestion(UUID politicianId, UUID questionId) {
        Optional<PersonalQuestion> queryResult = personalQuestionRepository.findById(questionId);
        if (queryResult.isEmpty()) return Optional.empty();
        else return Optional.of(MapPersonalQuestion.toTransferObject(queryResult.get()));
    }
    
}
