package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.PersonalAnswerTO;
import ch.zhaw.smartervote.contract.transferobject.PersonalQuestionTO;
import ch.zhaw.smartervote.persistency.entities.BaseEntity;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;

import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * Maps PoliticianQuestion entities to PoliticianQuestionTO transfer objects.
 *
 * @author Stefan Teodoropol
 */
public class MapPersonalQuestion {

    /**
     * Maps a single MediaCoverage entity to a MediaEntryTO transfer object.
     *
     * @param entity the question entity
     * @param upvoted indicates if the question was upvoted by the user of the current request
     * @return the question transfer object
     */
    public static PersonalQuestionTO toTransferObject(PersonalQuestion entity, boolean upvoted) {
        PersonalAnswerTO answer;
        if (entity.getPersonalQuestionAnswer() == null) {
            answer = new PersonalAnswerTO(null);
        } else {
            answer = new PersonalAnswerTO(entity.getPersonalQuestionAnswer().getText());
        }

        return new PersonalQuestionTO(entity.getId(), entity.getText(), entity.getUpvotes(), upvoted, answer);
    }

    /**
     * Maps a set of personal question entities to a set of personal question transfer object.
     *
     * @param entities a set of question entities
     * @return the set of question transfer objects
     */
    public static List<PersonalQuestionTO> toTransferObjects(List<PersonalQuestion> entities, List<PersonalQuestion> upvotedPersonalQuestion) {
        Set<UUID> upvotedPersonalQuestionIds = upvotedPersonalQuestion.stream().map(BaseEntity::getId).collect(Collectors.toSet());

        return entities.stream()
                .map(e -> MapPersonalQuestion.toTransferObject(e, upvotedPersonalQuestionIds.contains(e.getId())))
                .collect(Collectors.toList());
    }

}
