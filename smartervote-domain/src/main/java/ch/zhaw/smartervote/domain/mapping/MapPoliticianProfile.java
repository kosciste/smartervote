package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.persistency.entities.MediaCoverage;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import ch.zhaw.smartervote.persistency.entities.Politician;

import java.util.List;

/**
 * Maps Politician entities to PoliticianProfileTO transfer objects.
 *
 * @author Stefan Teodoropol
 */
public class MapPoliticianProfile {

    /**
     * Maps the given list of elements to a politician profile to object.
     *
     * @param entity politician entity to map
     * @param sortedPersonalQuestions sorted list of personal questions
     * @param sortedMediaCoverages sorted list of media coverages
     * @param upvotedPersonalQuestions questions that were upvoted by the user of the current request
     * @return politician profile to
     */
    public static PoliticianProfileTO toTransferObject(Politician entity,
                                                       List<PersonalQuestion> sortedPersonalQuestions,
                                                       List<MediaCoverage> sortedMediaCoverages,
                                                       List<PersonalQuestion> upvotedPersonalQuestions) {
        return new PoliticianProfileTO(entity.getId(),
                entity.getPicture(),
                entity.getName(),
                entity.getParty().getName(),
                entity.getBirthyear(),
                entity.getProfession(),
                entity.getGender().toString(),
                MapMediaCoverage.toTransferObjects(sortedMediaCoverages),
                MapPersonalQuestion.toTransferObjects(sortedPersonalQuestions, upvotedPersonalQuestions));
    }
    
}
