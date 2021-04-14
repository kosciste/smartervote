package ch.zhaw.smartervote.webapp.pages;

import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.TestInterface;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
public class PageController {

    private final TestInterface testInterface;
    private final ElectionProposalService electionProposalService;

    @Autowired
    public PageController(TestInterface testInterface, ElectionProposalService electionProposalService) {
        this.testInterface = testInterface;
        this.electionProposalService = electionProposalService;
    }


    @GetMapping("/")
    public String index(HttpServletResponse response,
                        Model model) {
        Set<ElectionTO> elections = electionProposalService.getAvailableElections();
        model.addAttribute("elections", elections);
        return "index";
    }

    @GetMapping("/wahlen/{id}")
    public String showTopics(@PathVariable("id") UUID id, Model model) {
        SubjectCustomizingTO subjectCustomizingTO = new SubjectCustomizingTO();
        List<SubjectTO> subjects = new ArrayList<>(electionProposalService.getQuestionSubjects(id));
        subjectCustomizingTO.setSubjectTOS(subjects);
        model.addAttribute("form", subjectCustomizingTO);
        return "election";
    }

    /*@PostMapping("/savesubjects")
    public String saveSubjects(@ModelAttribute SubjectCustomizingTO form, Model model){
        Set<SubjectTO> subjectTOS = Set.copyOf(form.getSubjectTOS());
        HashMap<SubjectTO, Set<QuestionTO>> map = electionProposalService.getQuestionCatalogue()

    }*/



}
