package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PersonalQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

/**
 * Rest controller that allows upvoting questions.
 *
 * @author Leo Rudin
 * @author Stefan Teodoropol
 */
@RestController
public class PersonalQuestionUpvoteRestController {

    /**
     * Personal question service to upvote questions.
     */
    private final PersonalQuestionService personalQuestionService;

    @Autowired
    public PersonalQuestionUpvoteRestController(PersonalQuestionService personalQuestionService) {
        this.personalQuestionService = personalQuestionService;
    }

    /**
     * Upvotes the question with the given id in the post request.
     *
     * @param id id to upvote
     * @param request request to fetch the ip address
     * @return new upvote count
     */
    @PostMapping("/api/upvote-question")
    public Object upvoteQuestion(@RequestParam("id") String id, HttpServletRequest request) {
        try {
            return personalQuestionService.upvoteQuestion(UUID.fromString(id), request.getRemoteAddr());
        } catch (IllegalArgumentException | DomainException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
