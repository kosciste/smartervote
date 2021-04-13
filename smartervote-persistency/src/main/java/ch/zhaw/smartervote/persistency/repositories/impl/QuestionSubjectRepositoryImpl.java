package ch.zhaw.smartervote.persistency.repositories.impl;

import ch.zhaw.smartervote.persistency.DatabaseConnection;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionSubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Repository for questions.
 *
 * @author Raphael Krebs
 */
@Component("questionSubjectRepository")
public class QuestionSubjectRepositoryImpl extends BaseRepositoryImpl<QuestionSubject>
        implements QuestionSubjectRepository {

    @Autowired
    public QuestionSubjectRepositoryImpl(DatabaseConnection databaseConnection) {
        super(databaseConnection);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected Class<?> getClassType() {
        return QuestionSubject.class;
    }

}
