package ch.zhaw.smartervote.domain.algorithm;

import ch.zhaw.smartervote.contract.SubjectWeight;
import ch.zhaw.smartervote.contract.transferobject.QuestionTO;
import ch.zhaw.smartervote.contract.transferobject.SubjectTO;
import ch.zhaw.smartervote.persistency.entities.Question;
import ch.zhaw.smartervote.persistency.entities.QuestionAnswer;
import ch.zhaw.smartervote.persistency.entities.QuestionSubject;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

class ElectionProposalAlgorithmImplTest {

    ElectionProposalAlgorithm electionProposalAlgorithm;
    List<QuestionAnswer> politicianAnswers;
    Map<SubjectTO, List<QuestionTO>> userAnsweredQuestions;

    QuestionAnswer questionAnswerLeft;
    QuestionAnswer questionAnswerMiddle;
    QuestionAnswer questionAnswerRight;

    Question question_1;
    QuestionTO questionTO_1;
    QuestionSubject questionSubject_1;
    List<QuestionTO> questionList_1;
    SubjectTO questionSubjectTO_1;
    SubjectWeight weight;

    @BeforeEach
    void setUp() {
        electionProposalAlgorithm = new ElectionProposalAlgorithm();

        questionSubject_1 = new QuestionSubject();
        questionSubject_1.setName("Topc1");
        /*question_1 = new Question();
        question_1.setT("5");
        question_1.setQuestionSubject(questionSubject_1);*/
        question_1 =  mock(Question.class);
        question_1.setT("5");
        question_1.setQuestionSubject(questionSubject_1);
        when(question_1.getId()).thenReturn(new UUID(3,3));



        questionAnswerLeft= new QuestionAnswer();
        questionAnswerLeft.setQuestion(question_1);
        questionAnswerLeft.setAnswer(1);

        politicianAnswers = new ArrayList<>();
        politicianAnswers.add(questionAnswerLeft);

        weight = SubjectWeight.NORMAL;
        questionSubjectTO_1 = new SubjectTO(questionSubject_1.getId(), questionSubject_1.getName(),weight);
        questionTO_1= new QuestionTO(question_1.getId(), "23");
        questionTO_1.setAnswer(1);
        questionList_1 = new ArrayList<>();
        questionList_1.add(questionTO_1);
        userAnsweredQuestions = new HashMap<>();
        userAnsweredQuestions.put(questionSubjectTO_1, questionList_1);





    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void calculateResult() {
        int  expectedValue =0;
        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));


    }

}