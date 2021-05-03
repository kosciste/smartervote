package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.webapp.dto.ElectionProposalDTO;
import ch.zhaw.smartervote.webapp.util.MessageUtil;
import ch.zhaw.smartervote.webapp.vo.Converter;
import ch.zhaw.smartervote.webapp.vo.SubjectVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
     * Property key for the error message if only not interested was selected.
     */
    private static final String ERROR_MESSAGE_ONLY_NOT_INTERESTED = "error.only.not.interested";

    /**
     * Property key for the error message if the user tries to open the question page without prior selection.
     */
    private static final String ERROR_MESSAGE_NO_PREVIOUS_SELECTION = "error.no.previous.selection";

    /**
     * Property key for the error message if the user does only select the default answer.
     */
    private static final String ERROR_MESSAGE_ONLY_DEFAULT_ANSWER = "error.only.default.answer";

    /**
     * Election proposal service to interact with the backend.
     */
    private final ElectionProposalService electionProposalService;

    /**
     * Message utility that allows setting error messages.
     */
    private final MessageUtil messageUtil;

    @Autowired
    public ElectionProposalController(ElectionProposalService electionProposalService,
                                      MessageUtil messageUtil) {
        this.electionProposalService = electionProposalService;
        this.messageUtil = messageUtil;
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
    @GetMapping("/election/{id}")
    public String showQuestionSubjects(@ModelAttribute ElectionProposalDTO electionProposalDTO,
                                       @PathVariable("id") String id, Model model) {
        Set<SubjectTO> subjectTOS;
        try {
            subjectTOS = electionProposalService.getQuestionSubjects(UUID.fromString(id));
        } catch (IllegalArgumentException | DomainException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Election Not Found", e);
        }

        electionProposalDTO.setElectionId(UUID.fromString(id));
        electionProposalDTO.setSubjectVOS(Converter.convertToSubjectVO(subjectTOS));

        model.addAttribute("form", electionProposalDTO);
        return "election";
    }

    /**
     * Method to receive the post request to save the subjects.
     *
     * @param electionProposalDTO election proposal data transfer object
     * @return redirect to question page
     */
    @PostMapping("/save-subjects")
    public String saveQuestionSubjectSelection(@ModelAttribute ElectionProposalDTO electionProposalDTO,
                                               RedirectAttributes redirectAttributes) {
        if (electionProposalDTO.onlyDefaultWeightSelected()) {
            messageUtil.createErrorMessage(redirectAttributes, ERROR_MESSAGE_ONLY_NOT_INTERESTED);
            return "redirect:/election/" + electionProposalDTO.getElectionId();
        }

        return "redirect:/question-catalogue";
    }

    /**
     * Displays the page to answer the actual questions based on the weight selection before.
     *
     * @param electionProposalDTO election proposal data transfer object
     * @param model model to display data on the view
     * @return page to answer the questions
     */
    @GetMapping("/question-catalogue")
    public String showQuestions(@ModelAttribute ElectionProposalDTO electionProposalDTO,
                                Model model,
                                RedirectAttributes redirectAttributes) {
        // check if previous values were selected
        if (electionProposalDTO.getElectionId() == null
                || electionProposalDTO.onlyDefaultWeightSelected()) {
            messageUtil.createErrorMessage(redirectAttributes, ERROR_MESSAGE_NO_PREVIOUS_SELECTION);
            return "redirect:/";
        }

        Set<SubjectTO> subjectTOS = Converter.convertToSubjectTO(electionProposalDTO.getSubjectVOS());
        Map<SubjectTO, Set<QuestionTO>> subjectsMap;
        try {
            subjectsMap = electionProposalService.getQuestionCatalogue(electionProposalDTO.getElectionId(), subjectTOS);
        } catch (DomainException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
        }

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
     * Method to receive the post request to save the question answers and calculate the proposal.
     *
     * @param electionProposalDTO election proposal data transfer object
     * @param status session status to terminate the session
     * @return redirect to result page
     */
    @PostMapping("/save-questions")
    public String saveQuestionSelection(@ModelAttribute ElectionProposalDTO electionProposalDTO,
                                        SessionStatus status,
                                        RedirectAttributes redirectAttributes) {
        if (electionProposalDTO.onlyDefaultAnswerSelected()) {
            messageUtil.createErrorMessage(redirectAttributes, ERROR_MESSAGE_ONLY_DEFAULT_ANSWER);
            return "redirect:/question-catalogue";
        }

        Map<SubjectTO, Set<QuestionTO>> results = new HashMap<>();
        for (SubjectVO subjectVO : electionProposalDTO.getSubjectVOS()) {
            results.put(Converter.convertToSubjectTO(subjectVO), Converter.convertToQuestionTO(subjectVO.getQuestionVOS()));
        }

        UUID result;
        try {
            result = electionProposalService.calculateElectionProposal(electionProposalDTO.getElectionId(), results);
        } catch (DomainException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
        }

        status.setComplete();
        return "redirect:/result/" + result;
    }

}
