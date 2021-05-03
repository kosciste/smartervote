package ch.zhaw.smartervote.webapp.controllers;

import ch.zhaw.smartervote.contract.DomainException;
import ch.zhaw.smartervote.contract.PersonalQuestionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;
import java.util.LinkedHashMap;

/**
 * This class delegates between viewing a politician's profile and calling the PoliticianProfileService
 *
 * @author Stefan Teodoropol
 */
@RestController
public class PersonalQuestionController {

    /**
     * Politician profile service to fetch politicians profile.
     */
    private final PersonalQuestionService personalQuestionService;

    @Autowired
    public PersonalQuestionController(PersonalQuestionService personalQuestionService) {
        this.personalQuestionService = personalQuestionService;
    }

    /**
     * Post a PoliticianQuestionTO to add it for a politician
     *
     * @param id id of the politician
     * @param politicianQuestion the transfer object containing the politician question. UI is currently responsible for setting UUID of question.
     * @return result of the method
     */
    @PostMapping("/politician/{id}/addQuestion")
    public String addQuestion(@PathVariable("id") String politicianId, @RequestBody Object personalQuestion) {
        boolean result;
        try {
            String text = ((LinkedHashMap<String, String>)personalQuestion).get("text");
            result = personalQuestionService.addQuestion(UUID.fromString(politicianId), text);
        } catch (IllegalArgumentException | DomainException e) {
            return "redirect:/";
        }
        return String.valueOf(result);
    }

    /**
     * Post your ip to upvote a politician question
     *
     * @param id id of the question
     * @param ip the ip of the user
     * @return result of the method
     */
    @PostMapping("/question/{id}/upvote")
    public String upvoteQuestion(@PathVariable("id") String id, @RequestBody String ip) {
        boolean result;
        try {
            result = personalQuestionService.upvoteQuestion(UUID.fromString(id), ip);
        } catch (IllegalArgumentException | DomainException e) {
            return "redirect:/";
        }
        return String.valueOf(result);
    }


}