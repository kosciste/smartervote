package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PersonalQuestionService;
import ch.zhaw.smartervote.contract.PoliticianService;
import ch.zhaw.smartervote.contract.transferobject.PoliticianProfileTO;
import ch.zhaw.smartervote.webapp.util.MessageUtil;
import ch.zhaw.smartervote.webapp.vo.PersonalQuestionVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;
import java.util.UUID;

/**
 * This class delegates between viewing a politician's profile and calling the PoliticianProfileService
 *
 * @author Stefan Teodoropol
 */
@Controller
public class PoliticianProfileController {

    /**
     * Property key for the error message if empty question was added.
     */
    private static final String ERROR_MESSAGE_EMPTY_QUESTION = "error.empty.question";

    /**
     * Property key for the error message if the user tries add a question that is too long.
     */
    private static final String ERROR_MESSAGE_QUESTION_TOO_LONG = "error.question.too.long";

    /**
     * Property key for the success message if the question was successfully added.
     */
    private static final String SUCCESS_MESSAGE_QUESTION_ADDED = "success.question.added";

    /**
     * Politician profile service to fetch politicians profile.
     */
    private final PoliticianService politicianService;

    /**
     * Personal question that is used to ask personal questions to the politician.
     */
    private final PersonalQuestionService personalQuestionService;

    /**
     * Message utility that allows setting error messages.
     */
    private final MessageUtil messageUtil;

    @Autowired
    public PoliticianProfileController(PoliticianService politicianService,
                                       PersonalQuestionService personalQuestionService,
                                       MessageUtil messageUtil) {
        this.politicianService = politicianService;
        this.personalQuestionService = personalQuestionService;
        this.messageUtil = messageUtil;
    }

    /**
     * Displays the result of politicians.
     *
     * @param id id of the result to display
     * @param model model used to display data on the view
     * @return result page
     */
    @GetMapping("/politician/{id}")
    public String showPolitician(@PathVariable("id") String id, Model model, HttpServletRequest request) {
        Optional<PoliticianProfileTO> politicianProfileTOOptional;
        try {
            politicianProfileTOOptional = politicianService.getPoliticianData(UUID.fromString(id), request.getRemoteAddr());
        } catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Politician Not Found", e);
        }

        if (politicianProfileTOOptional.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        }

        model.addAttribute("politician", politicianProfileTOOptional.get());
        model.addAttribute("personalQuestionForm", new PersonalQuestionVO());

        return "politician";
    }

    /**
     * Receives post request to save a new personal question for the politician.
     *
     * @param id id of the politician
     * @param personalQuestionVO personal question VO object that was filled by thymeleaf form bindings
     * @param redirectAttributes redirect attributes to flash error messages after request
     * @return redirect to the politician profile
     */
    @PostMapping("/politician/{id}/add-question")
    public String addQuestion(@PathVariable("id") String id,
                              PersonalQuestionVO personalQuestionVO,
                              RedirectAttributes redirectAttributes) {
        if (personalQuestionVO.getText() == null || "".equals(personalQuestionVO.getText())) {
            messageUtil.createErrorMessage(redirectAttributes, ERROR_MESSAGE_EMPTY_QUESTION);
            return "redirect:/politician/" + id;
        } else if (personalQuestionVO.getText().length() > PersonalQuestionService.MAX_QUESTION_LENGTH) {
            messageUtil.createErrorMessage(redirectAttributes, ERROR_MESSAGE_QUESTION_TOO_LONG);
            return "redirect:/politician/" + id;
        }

        try {
            personalQuestionService.addQuestion(UUID.fromString(id), personalQuestionVO.getText());
        } catch (IllegalArgumentException | DomainException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Unable to add question", e);
        }

        messageUtil.createSuccessMessage(redirectAttributes, SUCCESS_MESSAGE_QUESTION_ADDED);

        return "redirect:/politician/" + id;
    }


}