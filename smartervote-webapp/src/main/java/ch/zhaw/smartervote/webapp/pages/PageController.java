package ch.zhaw.smartervote.webapp.pages;

import ch.zhaw.smartervote.contract.TestInterface;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PageController {

    private final TestInterface testInterface;

    @Autowired
    public PageController(TestInterface testInterface) {
        this.testInterface = testInterface;
    }

    @GetMapping("/")
    public String index(Model model) {
        String text = testInterface.doSomething();
        model.addAttribute("text", text);
        return "index";
    }

    @GetMapping("/evaluation")
    public String showQuestions(Model model) {
        String question = testInterface.doSomething();
        model.addAttribute("text", question);
        return "evaluation";
    }



}
