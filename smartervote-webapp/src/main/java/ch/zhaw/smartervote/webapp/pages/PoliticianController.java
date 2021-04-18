package ch.zhaw.smartervote.webapp.pages;

import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.UUID;

/**
 * This class represents the controller for managing the interaction with the PoliticianService.
 *
 * @author Stefan Koscica
 */
@Controller
public class PoliticianController {

    /**
     * Politician service to fetch politicians.
     */
    private final PoliticianService politicianService;

    /**
     * Default offset.
     */
    private final static int OFFSET = 0;

    /**
     * Default size.
     */
    private final static int SIZE = 1000;

    @Autowired
    public PoliticianController(PoliticianService politicianService) {
        this.politicianService = politicianService;
    }

    /**
     * Displays the result of politicians.
     *
     * @param id id of the result to display
     * @param model model used to display data on the view
     * @return result page
     */
    @GetMapping("/results/{id}")
    public String showResult(@PathVariable("id") String id, Model model) {
        List<PoliticianTO> politicians;
        try {
            politicians = politicianService.getPoliticians(OFFSET, SIZE, UUID.fromString(id));
        } catch (IllegalArgumentException e) {
            return "redirect:/";
        }
        model.addAttribute("politicians", politicians);
        return "proposal";
    }

}