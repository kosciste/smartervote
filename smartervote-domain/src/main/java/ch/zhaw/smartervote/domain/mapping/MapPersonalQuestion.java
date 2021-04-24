package ch.zhaw.smartervote.domain.mapping;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import ch.zhaw.smartervote.contract.transferobject.PoliticianAnswerTO;
import ch.zhaw.smartervote.contract.transferobject.PoliticianQuestionTO;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;

/**
 * Maps PoliticianQuestion entities to PoliticianQuestionTO transfer objects.
 *
 * @author Stefan Teodoropol
 */
public class MapPersonalQuestion {

    /**
     * Maps a single MediaCoverage entity to a MediaEntryTO transfer object.
     *
     * @param entity the question entity.
     * @return the question transfer object.
     */
    public static PoliticianQuestionTO toTransferObject(PersonalQuestion question) {
        PoliticianAnswerTO answer = new PoliticianAnswerTO(question.getPersonalQuestionAnswer().getText());
        return new PoliticianQuestionTO(question.getId(),question.getText(),(int)question.getUpvotes(),answer);
    }

    /**
     * Maps a set of MediaCoverage entities to a set of MediaEntryTO transfer object.
     *
     * @param entities a set of question entities.
     * @return the set of question transfer objects.
     */
    public static List<PoliticianQuestionTO> toTransferObjects(Set<PersonalQuestion> entities) {
        return entities.stream().map(MapPersonalQuestion::toTransferObject).collect(Collectors.toList());
    }

}
