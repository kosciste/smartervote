package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.persistency.entities.Question;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class MapQuestion {

    public static QuestionTO toTransferObject(Question entity) {
        return new QuestionTO(entity.getId(), entity.getText());
    }

    public static List<QuestionTO> toTransferObjects(Set<Question> entities) {
        return entities.stream().map(MapQuestion::toTransferObject).collect(Collectors.toList());
    }

}
