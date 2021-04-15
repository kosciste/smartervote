package ch.zhaw.smartervote.webapp.pages;

import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.TestInterface;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.webapp.Converter;
import ch.zhaw.smartervote.webapp.dto.ElectionProposalDTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.webapp.vo.QuestionVO;
import ch.zhaw.smartervote.webapp.vo.SubjectVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.stream.Collectors;

@Controller
@SessionAttributes("electionProposalDTO")
public class PageController {

    private final static String DEFAULT_WEIGHT = "2";
    private final TestInterface testInterface;
    private final ElectionProposalService electionProposalService;

    @Autowired
    public PageController(TestInterface testInterface, ElectionProposalService electionProposalService) {
        this.testInterface = testInterface;
        this.electionProposalService = electionProposalService;
    }

    @ModelAttribute
    public ElectionProposalDTO electionProposalDTO(){
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
        try{
            subjectTOS = electionProposalService.getQuestionSubjects(UUID.fromString(id));
        } catch (IllegalArgumentException e){
            return "redirect:/";
        }
        electionProposalDTO.setElectionId(UUID.fromString(id));

        List<SubjectVO> subjectVOS = subjectTOS.stream()
                .map(s->new SubjectVO(s.getId().toString(),s.getName(),DEFAULT_WEIGHT)).collect(Collectors.toList());
        electionProposalDTO.setSubjectVOS(subjectVOS);
        model.addAttribute("form", electionProposalDTO);
        return "election";
    }

    @GetMapping("/fragebogen")
    public String showQuestions(@ModelAttribute ElectionProposalDTO electionProposalDTO, Model model) {
        Set<SubjectTO> subjectTOS = Set.copyOf(electionProposalDTO.getSubjectVOS())
                .stream()
                .map(s->new SubjectTO(UUID.fromString(s.getId()), s.getName(),
                        Converter.convertWeigth(Integer.parseInt(s.getWeight())))).collect(Collectors.toSet());
        Map<SubjectTO, Set<QuestionTO>> subjectsMap = electionProposalService
                .getQuestionCatalogue(electionProposalDTO.getElectionId(), subjectTOS);
        List<QuestionVO> questionVOS = new ArrayList<>();
        for (Map.Entry<SubjectTO, Set<QuestionTO>> entry : subjectsMap.entrySet()) {
            for(QuestionTO q : entry.getValue()){
                questionVOS.add(new QuestionVO(entry.getKey().getId().toString(),
                        q.getId().toString(), q.getText(), DEFAULT_WEIGHT));
            }
        }
        electionProposalDTO.setQuestionVOS(questionVOS);
        model.addAttribute("form", electionProposalDTO);
        return "evaluate";
    }


    @PostMapping("/save-subjects")
    public String saveSubjects(@ModelAttribute ElectionProposalDTO electionProposalDTO, Model model){
        //session.setAttribute("subjectDTO", subjectDTO);
        return "redirect:/fragebogen";
    }


    /*@PostMapping("/save-questions")
    public String saveQuestions(@ModelAttribute("subjectDTO") SubjectDTO subjectDTO){
        Map<SubjectTO, Set<QuestionTO>> map = new HashMap<>();
        for(SubjectTO subjectTO : subjectDTO.getSubjectTOS()){
            for(QuestionVO question: subjectDTO.getQuestionVOS()){
                if(subjectTO.getId().toString().equals(question.getSubjectID())){
                    map.put(subjectTO, )
                }
            }
        }
    }*/



}
