package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PoliticianList;
import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianFilterTO;
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
     * Default offset.
     */
    private final static int OFFSET = 0;

    /**
     * Default size.
     */
    private final static int SIZE = 1000;

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
    @GetMapping("/result/{id}")
    public String showResult(@PathVariable("id") String id,
                             @ModelAttribute PoliticianFilterVO politicianFilterVO,
                             Model model) {
        PoliticianList politicians;
        PoliticianFilterTO politicianFilterTO = Converter.convertToPoliticianFilterTO(politicianFilterVO);
        try {
            politicians = politicianService.filterPoliticians(OFFSET, SIZE, politicianFilterTO, UUID.fromString(id));
        } catch (IllegalArgumentException | DomainException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Proposal Result Not Found", e);
        }

        model.addAttribute("id", id);
        model.addAttribute("parties", politicianService.getParties());
        model.addAttribute("politicians", politicians);
        model.addAttribute("filter", politicianFilterVO);

        return "proposal";
    }

}
