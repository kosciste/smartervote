package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Maps question subject entities to transfer objects.
 *
 * @author Raphael Krebs
 */
public class MapQuestionSubject {

    /**
     * The default weight of a subject.
     */
    private static final SubjectWeight DEFAULT_WEIGHT = SubjectWeight.NORMAL;

    /**
     * Maps a single question subject entity to a transfer object.
     *
     * @param entity the question subject entity to be mapped
     * @return the mapped transfer object
     */
    public static SubjectTO toTransferObject(QuestionSubject entity) {
        return new SubjectTO(entity.getId(), entity.getName(), DEFAULT_WEIGHT);
    }

    /**
     * Maps a list of question subject entities to a list of transfer objects.
     *
     * @param entities the list of question subject entities to be mapped
     * @return the list of mapped transfer objects
     */
    public static List<SubjectTO> toTransferObjects(List<QuestionSubject> entities) {
        return entities.stream().map(MapQuestionSubject::toTransferObject).collect(Collectors.toList());
    }

}
