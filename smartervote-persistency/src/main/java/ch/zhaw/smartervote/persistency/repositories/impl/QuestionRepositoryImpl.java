package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.entities.Question;
import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionRepository;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

import javax.persistence.Query;
import java.util.List;

/**
 * Repository for questions.
 *
 * @author Leo Rudin
 */
@Component("questionRepository")
public class QuestionRepositoryImpl extends BaseRepositoryImpl<Question> implements QuestionRepository {

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return Question.class;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<Question> findByText(String text) {
        Session connection = DatabaseConnection.getInstance().createSession();
        Query query = connection.createNamedQuery("Question.findByText");
        query.setParameter("text", text);
        return query.getResultList();
    }

}
