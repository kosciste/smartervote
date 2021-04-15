package ch.zhaw.smartervote.webapp.pages;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PoliticianController {

    @GetMapping("/results/{id}")
    public String showResult(@PathVariable("id") String id) {
        System.out.println(id);
        return "index";
    }

}
