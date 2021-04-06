package ch.zhaw.smartervote.core;

import ch.zhaw.smartervote.contract.TestInterface;
import ch.zhaw.smartervote.persistency.entities.Question;
import ch.zhaw.smartervote.persistency.repositories.iface.QuestionRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Optional;
import java.util.UUID;

@Component("testInterface")
public class TestInterfaceImpl implements TestInterface {

    private final QuestionRepository questionRepository;

    @Autowired
    public TestInterfaceImpl(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    @Override
    public String doSomething() {
        Optional<Question> question = questionRepository.findById(UUID.fromString("a335650d-06b4-4e92-ba77-d5f8964ceb82"));
        return question.isPresent() ? question.get().getText() : "Not found.";
    }

}
