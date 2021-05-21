package ch.zhaw.smartervote.webapp.controller;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PoliticianList;
import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
import ch.zhaw.smartervote.webapp.dto.Converter;
import ch.zhaw.smartervote.webapp.dto.PoliticianFilterDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.server.ResponseStatusException;

import java.util.UUID;

/**
 * Controller that manages displaying proposal results and filtering them.
 *
 * @author Stefan Koscica
 */
@Controller
public class PoliticianListController {

    /**
     * Politician service to fetch politicians.
     */
    private final PoliticianService politicianService;

    /**
     * Default size of a single page.
     */
    private final static int PAGE_SIZE = 10;

    @Autowired
    public PoliticianListController(PoliticianService politicianService) {
        this.politicianService = politicianService;
    }

    /**
     * Displays the result of politicians.
     *
     * @param id id of the result to display
     * @param model model used to display data on the view
     * @return result page
     */
    @GetMapping("/result/{id}/page/{page}")
    public String showResult(@PathVariable("id") String id,
                             @PathVariable("page") String page,
                             @ModelAttribute PoliticianFilterDTO politicianFilterVO,
                             Model model) {
        PoliticianList result;
        try {
            PoliticianFilterTO politicianFilterTO = Converter.convertToPoliticianFilterTO(politicianFilterVO);
            result = politicianService.filterPoliticians(Integer.parseInt(page) - 1, PAGE_SIZE, politicianFilterTO, UUID.fromString(id));
        } catch (IllegalArgumentException | DomainException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Proposal Result Not Found", e);
        }

        model.addAttribute("id", id);
        model.addAttribute("parties", politicianService.getParties());
        model.addAttribute("politicians", result);
        model.addAttribute("filter", politicianFilterVO);
        model.addAttribute("defaultFilter", PoliticianService.DEFAULT_FILTER);
        addPaginiationAttributes(model, result);

        return "proposal-result";
    }

    /**
     * Adds methods to the model that are used on the UI to render the pagination.
     *
     * @param model model to add the attributes
     * @param result result that contains the information
     */
    private void addPaginiationAttributes(Model model, PoliticianList result) {
        model.addAttribute("prevPage", result.getCurrentPage() - 1);
        model.addAttribute("prevLinkEnabled", result.getCurrentPage() - 1 != 0);
        model.addAttribute("currentPage", result.getCurrentPage());
        model.addAttribute("nextLinkEnabled", result.getCurrentPage() != result.getTotalPages());
        model.addAttribute("nextPage", result.getCurrentPage() + 1);

        model.addAttribute("totalPages", result.getTotalPages());
    }

}
