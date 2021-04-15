package ch.zhaw.smartervote.webapp.pages;

import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.webapp.vo.Converter;
import ch.zhaw.smartervote.webapp.dto.ElectionProposalDTO;
import ch.zhaw.smartervote.webapp.vo.SubjectVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
@SessionAttributes("electionProposalDTO")
public class ElectionProposalController {

    private final ElectionProposalService electionProposalService;

    @Autowired
    public ElectionProposalController(ElectionProposalService electionProposalService) {
        this.electionProposalService = electionProposalService;
    }

    @ModelAttribute
    public ElectionProposalDTO electionProposalDTO() {
        return new ElectionProposalDTO();
    }

    @GetMapping("/")
    public String index(HttpServletResponse response,
                        Model model) {
        Set<ElectionTO> elections = electionProposalService.getAvailableElections();
        model.addAttribute("elections", elections);
        return "index";
    }

    @GetMapping("/wahlen/{id}")
    public String showTopics(@ModelAttribute ElectionProposalDTO electionProposalDTO,
                             @PathVariable("id") String id, Model model) {
        Set<SubjectTO> subjectTOS = null;
        try {
            subjectTOS = electionProposalService.getQuestionSubjects(UUID.fromString(id));
        } catch (IllegalArgumentException e) {
            return "redirect:/";
        }

        electionProposalDTO.setElectionId(UUID.fromString(id));
        electionProposalDTO.setSubjectVOS(Converter.convertToSubjectVO(subjectTOS));

        model.addAttribute("form", electionProposalDTO);
        return "election";
    }

    @GetMapping("/fragebogen")
    public String showQuestions(@ModelAttribute ElectionProposalDTO electionProposalDTO, Model model) {
        Set<SubjectTO> subjectTOS = Converter.convertToSubjectTO(electionProposalDTO.getSubjectVOS());
        Map<SubjectTO, Set<QuestionTO>> subjectsMap = electionProposalService
                .getQuestionCatalogue(electionProposalDTO.getElectionId(), subjectTOS);

        for (Map.Entry<SubjectTO, Set<QuestionTO>> entry : subjectsMap.entrySet()) {
            for (SubjectVO subjectVO : electionProposalDTO.getSubjectVOS()) {
                if (subjectVO.getId().equals(entry.getKey().getId())) {
                    subjectVO.setQuestionVOS(Converter.convertToQuestionVO(entry.getValue()));
                }
            }
        }

        electionProposalDTO.getSubjectVOS().removeIf(subjectVO -> subjectVO.getQuestionVOS() == null);

        model.addAttribute("form", electionProposalDTO);

        return "evaluate";
    }

    @PostMapping("/save-subjects")
    public String saveSubjects(@ModelAttribute ElectionProposalDTO electionProposalDTO, Model model) {
        return "redirect:/fragebogen";
    }


    @PostMapping("/save-questions")
    public String saveQuestions(@ModelAttribute ElectionProposalDTO electionProposalDTO) {
        Map<SubjectTO, Set<QuestionTO>> results = new HashMap<>();
        for (SubjectVO subjectVO : electionProposalDTO.getSubjectVOS()) {
            System.out.println(subjectVO.getQuestionVOS());
            results.put(Converter.convertToSubjectTO(subjectVO), Converter.convertToQuestionTO(subjectVO.getQuestionVOS()));
        }

        UUID result = UUID.fromString("bb1d763b-ca76-4ac5-81ef-a98d4f34e669");
        return "redirect:/results/" + result;
    }


}
