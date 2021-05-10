package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.persistency.entities.MediaCoverage;
import ch.zhaw.smartervote.persistency.entities.PersonalQuestion;
import ch.zhaw.smartervote.persistency.entities.Politician;

import javax.print.attribute.standard.Media;
import java.util.List;

/**
 * Maps Politician entitys to PoliticianProfileTO transfer objects.
 *
 * @author Stefan Teodoropol
 */
public class MapPoliticianProfile {

    /**
     * Maps a single Politician entity to a PoliticianProfileTO transfer object.
     *
     * @param entity the politician entity to be mapped.
     * @return the mapped transfer object.
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
                0,
                entity.getProfession(),
                entity.getGender().toString(),
                MapMediaCoverage.toTransferObjects(sortedMediaCoverages),
                MapPersonalQuestion.toTransferObjects(sortedPersonalQuestions, upvotedPersonalQuestions));
    }
    
}
