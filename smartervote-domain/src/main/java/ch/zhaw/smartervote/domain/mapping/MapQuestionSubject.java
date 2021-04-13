package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;

import java.util.Set;
import java.util.stream.Collectors;

public class MapQuestionSubject {

    private static final int DEFAULT_WEIGHT = 1;

    public static SubjectTO toTransferObject(QuestionSubject entity) {
        return new SubjectTO(entity.getId(), entity.getName(), DEFAULT_WEIGHT);
    }

    public static Set<SubjectTO> toTransferObjects(Set<QuestionSubject> entities) {
        return entities.stream().map(MapQuestionSubject::toTransferObject).collect(Collectors.toSet());
    }

}
