package ch.zhaw.smartervote.webapp.pages;

import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.PoliticianQuestionService;
import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/**
 *
 * This class represents the Controller for managing the interaction
 * with the PoliticianService.
 *
 * @author stefankoscica
 *
 */
@Controller
public class PoliticianController {
    private final PoliticianService politicianService;
    private final static int OFFSET = 0;
    private final static int SIZE = 5;

    @Autowired
    public PoliticianController(PoliticianService politicianService) {
        this.politicianService = politicianService;
    }

    @GetMapping("/results/{id}")
    public String showResult(@PathVariable("id") String id, Model model) {
        List<PoliticianTO> politicians = new ArrayList<>();
        try {
            politicians = politicianService.getPoliticians(OFFSET,SIZE, UUID.fromString(id));
        } catch (IllegalArgumentException e) {
            return "redirect:/";
        }
        model.addAttribute("politicians", politicians);
        return "proposal";
    }

}
