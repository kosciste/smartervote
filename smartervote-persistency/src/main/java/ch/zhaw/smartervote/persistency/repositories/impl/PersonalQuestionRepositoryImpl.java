package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.PersonalQuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Repository for personal questions.
 *
 * @author Stefan Teodoropol
 */
@Component("personalQuestionRepository")
public class PersonalQuestionRepositoryImpl extends BaseRepositoryImpl<PersonalQuestion> implements PersonalQuestionRepository {

    @Autowired
    public PersonalQuestionRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return PersonalQuestion.class;
    }

}
