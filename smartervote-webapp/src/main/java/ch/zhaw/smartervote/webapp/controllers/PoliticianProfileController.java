package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.server.ResponseStatusException;

import java.util.Optional;
import java.util.UUID;

/**
 * This class delegates between viewing a politician's profile and calling the PoliticianProfileService
 *
 * @author Stefan Teodoropol
 */
@Controller
public class PoliticianProfileController {

    /**
     * Politician profile service to fetch politicians profile.
     */
    private final PoliticianService politicianService;

    @Autowired
    public PoliticianProfileController(PoliticianService politicianService) {
        this.politicianService = politicianService;
    }

    /**
     * Displays the result of politicians.
     *
     * @param id id of the result to display
     * @param model model used to display data on the view
     * @return result page
     */
    @GetMapping("/politician/{id}")
    public String showPolitician(@PathVariable("id") String id, Model model) {
        Optional<PoliticianProfileTO> politicianProfileTOOptional;
        try {
            politicianProfileTOOptional = politicianService.getPoliticianData(UUID.fromString(id));
        } catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Politician Not Found", e);
        }

        if (politicianProfileTOOptional.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        }

        model.addAttribute("politician", politicianProfileTOOptional.get());
        return "politician";
    }


}