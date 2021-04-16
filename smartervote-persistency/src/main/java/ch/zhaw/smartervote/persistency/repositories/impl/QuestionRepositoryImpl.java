package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.entities.Question;
import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Repository for questions.
 *
 * @author Leo Rudin
 */
@Component("questionRepository")
public class QuestionRepositoryImpl extends BaseRepositoryImpl<Question> implements QuestionRepository {

    @Autowired
    public QuestionRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return Question.class;
    }

}
