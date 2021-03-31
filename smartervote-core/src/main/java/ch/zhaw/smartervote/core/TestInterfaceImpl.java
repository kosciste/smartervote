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
        Optional<Question> question = questionRepository.findById(UUID.fromString("a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11"));
        return question.isPresent() ? question.get().getTitle() : "Not found.";
    }

}
