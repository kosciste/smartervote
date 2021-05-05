package ch.zhaw.smartervote.domain;

import ch.zhaw.smartervote.contract.ElectionProposalService;
import ch.zhaw.smartervote.contract.transferobject.ElectionTO;
import ch.zhaw.smartervote.persistency.SpringJpaConfiguration;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;

import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;

@DataJpaTest // declare this test as a jpa test which loads the spring context with just relevant configuration to work with spring jpa
@ContextConfiguration(classes = {TestApplication.class, SpringJpaConfiguration.class}) // tell spring boot where to look for the jpa configuration
@AutoConfigureTestDatabase(replace= AutoConfigureTestDatabase.Replace.NONE) // do not use in memory database use application specific db instead
class ElectionProposalServiceImplIntegrationTest extends AbstractIntegrationTest {

    @Autowired
    private ElectionProposalService electionProposalService;

    @Test
    void test() {
        Set<ElectionTO> result = electionProposalService.getAvailableElections();
        assertEquals(1, result.size());
    }

}