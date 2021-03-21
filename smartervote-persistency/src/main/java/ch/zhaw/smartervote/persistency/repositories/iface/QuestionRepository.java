package ch.zhaw.smartervote.persistency.repositories.iface;

import ch.zhaw.smartervote.persistency.entities.Question;

import java.util.List;

/**
 * Interface for the question repository.
 *
 * @author Leo Rudin
 */
public interface QuestionRepository extends Repository<Question> {

    /**
     * Finds question by text.
     *
     * @return found questions
     */
    List<Question> findByText(String text);

}
