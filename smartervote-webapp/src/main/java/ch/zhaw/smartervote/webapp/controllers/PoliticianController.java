package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PoliticianList;
import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.webapp.vo.Converter;
import ch.zhaw.smartervote.webapp.vo.PoliticianFilterVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.UUID;

/**
 * This class represents the controller for managing the interaction with the PoliticianService.
 *
 * @author Stefan Koscica
 */

@Controller
@SessionAttributes("politicianFilterVO")
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
     * Model attribute that is used in all controller methods.
     *
     * @return PoliticianFilterVO object
     */
    @ModelAttribute
    public PoliticianFilterVO politicianFilterVO() {
        return new PoliticianFilterVO();
    }

    /**
     * Displays the result of politicians.
     *
     * @param id id of the result to display
     * @param model model used to display data on the view
     * @return result page
     */
    @GetMapping("/result/{id}")
    public String showResult(@ModelAttribute PoliticianFilterVO politicianFilterVO,
                             @PathVariable("id") String id, Model model) {
        politicianFilterVO.setResultUUID(UUID.fromString(id));
        PoliticianList politicians;
        List<String> parties;
        try {
            politicians = politicianService.getPoliticians(OFFSET, SIZE, UUID.fromString(id));
            parties = politicianService.getParties(OFFSET, SIZE, UUID.fromString(id));
        } catch (IllegalArgumentException | DomainException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Proposal Result Not Found", e);
        }
        model.addAttribute("parties", parties);
        model.addAttribute("filter", politicianFilterVO);
        model.addAttribute("politicians", politicians);
        return "proposal";
    }

    /**
     * Method to receive the post request to save the filter options.
     *
     * @param politicianFilterVO filter object
     * @return redirect to filtered result page
     */
    @PostMapping("/filter")
    public String filterResult(@ModelAttribute PoliticianFilterVO politicianFilterVO){
        String filteredResult = politicianFilterVO.getResultUUID().toString() + "/filtered";
        return "redirect:/result/" + filteredResult;
    }

    /**
     * This method returns the filtered results.
     *
     * @param politicianFilterVO filter object
     * @param id id of the result to display
     * @param model model to display data on the view
     * @return filtered results
     */
    @GetMapping("/result/{id}/filtered")
    public String showFilteredResult(@ModelAttribute PoliticianFilterVO politicianFilterVO,
                                     @PathVariable("id") String id,  Model model){
        PoliticianList politicians;
        List<String> parties;
        try {
            politicians = politicianService.filterPoliticians(OFFSET, SIZE,
                    Converter.convertToPoliticianFilterTO(politicianFilterVO),
                    UUID.fromString(id));
            parties = politicianService.getParties(OFFSET, SIZE, UUID.fromString(id));
        } catch (DomainException e){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Filtered Proposal Result Not Found", e);
        }
        model.addAttribute("parties",parties);
        model.addAttribute("politicians", politicians);
        model.addAttribute("filter", politicianFilterVO);
        return "proposal";
    }


}
