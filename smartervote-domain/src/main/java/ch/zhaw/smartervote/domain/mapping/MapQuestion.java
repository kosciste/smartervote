package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.persistency.entities.Question;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Maps question entities to transfer objects.
 *
 * @author Raphael Krebs
 */
public class MapQuestion {

    /**
     * Maps a single entity to transfer object.
     *
     * @param entity the question entity
     * @return the question transfer object
     */
    public static QuestionTO toTransferObject(Question entity) {
        return new QuestionTO(entity.getId(), entity.getText());
    }

    /**
     * Maps a list of entities to a list of transfer objects.
     *
     * @param entities a list of question entities
     * @return the list of question transfer objects
     */
    public static List<QuestionTO> toTransferObjects(List<Question> entities) {
        return entities.stream().map(MapQuestion::toTransferObject).collect(Collectors.toList());
    }

}
