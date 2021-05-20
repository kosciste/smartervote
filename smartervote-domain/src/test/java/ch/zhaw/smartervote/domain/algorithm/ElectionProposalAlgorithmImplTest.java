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

    QuestionSubject questionSubject_1;
    List<QuestionTO> questionList_1;
    SubjectTO questionSubjectTO_1;
    SubjectWeight weight;

    QuestionSubject questionSubject_2;
    List<QuestionTO> questionList_2;
    SubjectTO questionSubjectTO_2;
    SubjectWeight weight2;


    @BeforeEach
    void setUp() {
        electionProposalAlgorithm = new ElectionProposalAlgorithm();

        questionSubject_1 = mock(QuestionSubject.class);
        when(questionSubject_1.getId()).thenReturn(new UUID(1, 1));
        questionSubject_1.setName("Topc1");

        questionSubject_2=  mock(QuestionSubject.class);
        when(questionSubject_2.getId()).thenReturn(new UUID(2, 2));
        questionSubject_2.setName("Topc2");

        politicianAnswers = new ArrayList<>();
        userAnsweredQuestions = new HashMap<>();
    }

    /**
     * Creating the questions list entry's
     * @param count number of (new) entrys
     * @param questionSubject the subject the new questions belong to
     * @return the new user answer/question list
     */
    private List<QuestionTO> createQuestions(int count, QuestionSubject questionSubject ) {
        int n =politicianAnswers.size();
        List<QuestionTO> questionList = new ArrayList<>();
        for (int i=0; i<count;i++) {

            politicianAnswers.add(new QuestionAnswer());
            Question question;
            question = mock(Question.class);
            question.setQuestionSubject(questionSubject);
            when(question.getId()).thenReturn(new UUID(n+i+1, n+i+1));

            politicianAnswers.get(n+i).setQuestion(question);

            QuestionTO questionTO;
            questionTO = new QuestionTO(question.getId(), "i");
            questionList.add(questionTO);
        }
        return questionList;

    }

    @AfterEach
    /**
     * Clearing the Lists for a fresh start
     */
    void tearDown() {
        politicianAnswers.clear();
        questionList_1.clear();
    }


    @Test
    /**
     * Calculates matching score based on the answers of a politician and the answers of the user. In case half of the questions are answered identically.
     */
    void calculateResult50() {
        weight = SubjectWeight.NORMAL;
        questionSubjectTO_1 = new SubjectTO(questionSubject_1.getId(), questionSubject_1.getName(),weight);
        questionList_1=createQuestions(2,questionSubject_1);
        userAnsweredQuestions.put(questionSubjectTO_1, questionList_1);

        int  expectedValue =50;
        politicianAnswers.get(0).setAnswer(4);
        questionList_1.get(0).setAnswer(1);
        politicianAnswers.get(1).setAnswer(3);
        questionList_1.get(1).setAnswer(3);
        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));
    }

    @Test
    /**
     * Calculates matching score based on the answers of a politician and the answers of the user. In case all questions are answered identically.
     */
    void calculateResult100() {
        weight = SubjectWeight.NORMAL;
        questionSubjectTO_1 = new SubjectTO(questionSubject_1.getId(), questionSubject_1.getName(),weight);
        questionList_1=createQuestions(2,questionSubject_1);
        userAnsweredQuestions.put(questionSubjectTO_1, questionList_1);
        int  expectedValue =100;
        politicianAnswers.get(0).setAnswer(1);
        questionList_1.get(0).setAnswer(1);
        politicianAnswers.get(1).setAnswer(4);
        questionList_1.get(1).setAnswer(4);
        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));
    }

    @Test
    /**
     * checks if the Subject weight has the correct impact and multitopics ar working.
     */
    void calculateResultmultiTopic() {
        weight = SubjectWeight.NORMAL;
        questionSubjectTO_1 = new SubjectTO(questionSubject_1.getId(), questionSubject_1.getName(),weight);
        questionList_1=createQuestions(2, questionSubject_1);
        userAnsweredQuestions.put(questionSubjectTO_1, questionList_1);
        weight2 = SubjectWeight.IMPORTANT;
        questionSubjectTO_2 = new SubjectTO(questionSubject_2.getId(), questionSubject_2.getName(),weight2);
        questionList_2=createQuestions(1, questionSubject_2);
        userAnsweredQuestions.put(questionSubjectTO_2, questionList_2);


        int  expectedValue =65;
        politicianAnswers.get(0).setAnswer(1);
        questionList_1.get(0).setAnswer(1);
        politicianAnswers.get(1).setAnswer(4);
        questionList_1.get(1).setAnswer(4);

        politicianAnswers.get(2).setAnswer(4);
        questionList_2.get(0).setAnswer(1);

        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));

        expectedValue =96;
        weight2 = SubjectWeight.NOT_IMPORTANT;
        questionSubjectTO_2 = new SubjectTO(questionSubject_2.getId(), questionSubject_2.getName(),weight2);
        questionList_2=createQuestions(1, questionSubject_2);
        userAnsweredQuestions.put(questionSubjectTO_2, questionList_2);
        questionList_2.get(0).setAnswer(1);
        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));



    }
    @Test
    /**
     * checks if the Subject weight NOT_INRESTED has the correct impact.
     */
    void calculateResultNot_Intrested() {
        weight = SubjectWeight.NORMAL;
        questionSubjectTO_1 = new SubjectTO(questionSubject_1.getId(), questionSubject_1.getName(),weight);
        questionList_1=createQuestions(2, questionSubject_1);
        userAnsweredQuestions.put(questionSubjectTO_1, questionList_1);

        weight2 = SubjectWeight.NOT_INTERESTED;
        questionSubjectTO_2 = new SubjectTO(questionSubject_2.getId(), questionSubject_2.getName(),weight2);
        questionList_2=createQuestions(1, questionSubject_2);
        userAnsweredQuestions.put(questionSubjectTO_2, questionList_2);


        int  expectedValue =100;
        politicianAnswers.get(0).setAnswer(1);
        questionList_1.get(0).setAnswer(1);
        politicianAnswers.get(1).setAnswer(4);
        questionList_1.get(1).setAnswer(4);

        politicianAnswers.get(2).setAnswer(4);
        questionList_2.get(0).setAnswer(1);

        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));
    }

    @Test
    /**
     * checks if an not intrested (2) Question answer has no impact on the calculated value.
     */
    void calculateResultNot_Answered() {
        weight = SubjectWeight.NORMAL;
        questionSubjectTO_1 = new SubjectTO(questionSubject_1.getId(), questionSubject_1.getName(),weight);
        questionList_1=createQuestions(2, questionSubject_1);
        userAnsweredQuestions.put(questionSubjectTO_1, questionList_1);
        weight2 = SubjectWeight.NORMAL;
        questionSubjectTO_2 = new SubjectTO(questionSubject_2.getId(), questionSubject_2.getName(),weight2);
        questionList_2=createQuestions(1, questionSubject_2);
        userAnsweredQuestions.put(questionSubjectTO_2, questionList_2);


        int  expectedValue =100;
        politicianAnswers.get(0).setAnswer(1);
        questionList_1.get(0).setAnswer(1);
        politicianAnswers.get(1).setAnswer(4);
        questionList_1.get(1).setAnswer(4);

        politicianAnswers.get(2).setAnswer(4);
        questionList_2.get(0).setAnswer(2);     //not intrested Question

        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));
    }

    @Test
    /**
     * checks if an not answered Questionby the politician is calculated as an max error value.
     */
    void calculateResultNoPoliticianAnswer() {
        weight = SubjectWeight.NORMAL;
        questionSubjectTO_1 = new SubjectTO(questionSubject_1.getId(), questionSubject_1.getName(),weight);
        questionList_1=createQuestions(2,questionSubject_1);
        userAnsweredQuestions.put(questionSubjectTO_1, questionList_1);

        int  expectedValue =50;
       // politicianAnswer is missing -> counting as max error
        questionList_1.get(0).setAnswer(3);
        politicianAnswers.get(1).setAnswer(3);
        questionList_1.get(1).setAnswer(3);
        assertEquals(expectedValue, electionProposalAlgorithm.calculateResult(politicianAnswers, userAnsweredQuestions));
    }

}
