package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionAnswerRepository;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.NoResultException;
import java.util.Optional;
import java.util.UUID;

/**
 * Repository for questions.
 *
 * @author Raphael Krebs
 */
@Component("questionAnswerRepository")
public class QuestionAnswerRepositoryImpl extends BaseRepositoryImpl<QuestionAnswer> implements QuestionAnswerRepository {

    @Autowired
    public QuestionAnswerRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return QuestionAnswer.class;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Optional<QuestionAnswer> findPoliticianQuestion(UUID politicianId, UUID questionId) {
        Session session = databaseConnection.createSession();
        Query query = session.createQuery(
                "SELECT e FROM " + getClassType().getSimpleName() + " e " +
                        "WHERE e.politician.id = :politicianId " +
                        "AND e.question.id = :questionId");
        query.setParameter("politicianId", politicianId);
        query.setParameter("questionId", questionId);
        try {
            return Optional.of((QuestionAnswer) query.getSingleResult());
        } catch (NoResultException ex) {
            return Optional.empty();
        }
    }

}
