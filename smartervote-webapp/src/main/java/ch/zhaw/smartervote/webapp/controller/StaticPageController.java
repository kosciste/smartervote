package ch.zhaw.smartervote.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Controller for static pages.
 *
 * @author Leo Rudin
 */
@Controller
public class StaticPageController {

    /**
     * Displays the about page.
     *
     * @return about page
     */
    @GetMapping("/about")
    public String about() {
        return "about";
    }

}
