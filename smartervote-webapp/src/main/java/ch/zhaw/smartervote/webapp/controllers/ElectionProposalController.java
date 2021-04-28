package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.webapp.dto.ElectionProposalDTO;
import ch.zhaw.smartervote.webapp.vo.Converter;
import ch.zhaw.smartervote.webapp.vo.SubjectVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/**
 * This class represents the controller for managing the interaction with the ElectionProposalService.
 *
 * @author Stefan Koscica
 */
@Controller
@SessionAttributes("electionProposalDTO")
public class ElectionProposalController {

    /**
     * Election proposal service to interact with the backend.
     */
    private final ElectionProposalService electionProposalService;

    @Autowired
    public ElectionProposalController(ElectionProposalService electionProposalService) {
        this.electionProposalService = electionProposalService;
    }

    /**
     * Model attribute that is used in all controller methods.
     *
     * @return election proposal data transfer object
     */
    @ModelAttribute
    public ElectionProposalDTO electionProposalDTO() {
        return new ElectionProposalDTO();
    }

    /**
     * Displays the index page.
     *
     * @param model model to display data on the view
     * @return index page
     */
    @GetMapping("/")
    public String index(Model model) {
        Set<ElectionTO> elections = electionProposalService.getAvailableElections();
        model.addAttribute("elections", elections);
        return "index";
    }

    /**
     * Displays the subject weight selection page for a given election.
     *
     * @param electionProposalDTO election proposal data transfer object
     * @param id id of the election
     * @param model model to display data on the view
     * @return subject selection page
     */
    @GetMapping("/wahlen/{id}")
    public String showSubjects(@ModelAttribute ElectionProposalDTO electionProposalDTO,
                               @PathVariable("id") String id, Model model) {
        Set<SubjectTO> subjectTOS = electionProposalService.getQuestionSubjects(UUID.fromString(id));

        electionProposalDTO.setElectionId(UUID.fromString(id));
        electionProposalDTO.setSubjectVOS(Converter.convertToSubjectVO(subjectTOS));

        model.addAttribute("form", electionProposalDTO);
        return "election";
    }

    /**
     * Displays the page to answer the actual questions based on the weight selection before.
     *
     * @param electionProposalDTO election proposal data transfer object
     * @param model model to display data on the view
     * @return page to answer the questions
     */
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

        // remove subject that were not returned by the backend based on the passed weight
        electionProposalDTO.getSubjectVOS().removeIf(subjectVO -> subjectVO.getQuestionVOS() == null);

        model.addAttribute("form", electionProposalDTO);

        return "evaluate";
    }

    /**
     * Method to receive the post request to save the subjects. This does not much because the values are already
     * saved based on the thymeleaf bindings.
     *
     * @param electionProposalDTO election proposal data transfer object
     * @return redirect to question page
     */
    @PostMapping("/save-subjects")
    public String saveSubjects(@ModelAttribute ElectionProposalDTO electionProposalDTO) {
        return "redirect:/fragebogen";
    }

    /**
     * Method to receive the post reqeust to save the question answers and calculate the proposal.
     *
     * @param electionProposalDTO election proposal data transfer object
     * @param status session status to terminate the session
     * @return redirect to result page
     */
    @PostMapping("/save-questions")
    public String saveQuestions(@ModelAttribute ElectionProposalDTO electionProposalDTO, SessionStatus status) {
        Map<SubjectTO, Set<QuestionTO>> results = new HashMap<>();
        for (SubjectVO subjectVO : electionProposalDTO.getSubjectVOS()) {
            results.put(Converter.convertToSubjectTO(subjectVO), Converter.convertToQuestionTO(subjectVO.getQuestionVOS()));
        }

        UUID result = electionProposalService.calculateElectionProposal(electionProposalDTO.getElectionId(), results);

        status.setComplete();
        return "redirect:/results/" + result;
    }

}