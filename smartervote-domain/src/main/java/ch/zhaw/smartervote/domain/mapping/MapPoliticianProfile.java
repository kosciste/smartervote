package ch.zhaw.smartervote.domain.mapping;

import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.persistency.entities.Politician;

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
    public static PoliticianProfileTO toTransferObject(Politician entity) {

        return new PoliticianProfileTO(entity.getId(),
                entity.getPicture(),
                entity.getName(),
                entity.getParty().toString(),
                entity.getBirthyear(),
                0,
                entity.getProfession(),
                entity.getGender().toString(),
                MapMediaCoverage.toTransferObjects(entity.getMediaCoverage()),
                MapPersonalQuestion.toTransferObjects(entity.getPersonalQuestions()));
    }

    /**
     * Maps a single Politician entity with the matching score to a PoliticianProfileTO transfer object.
     *
     * @param entity the politician entity to be mapped.
     * @return the mapped transfer object.
     */
    public static PoliticianProfileTO toTransferObject(Politician entity, int match) {
        return new PoliticianProfileTO(entity.getId(),
                entity.getPicture(),
                entity.getName(),
                entity.getParty().toString(),
                entity.getBirthyear(),
                match,
                entity.getProfession(),
                entity.getGender().toString(),
                MapMediaCoverage.toTransferObjects(entity.getMediaCoverage()),
                MapPersonalQuestion.toTransferObjects(entity.getPersonalQuestions()));
    }
    
}
