package ch.zhaw.smartervote.domain;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * In order to make dependency injection work with integration test there needs to be a Spring Boot Application
 * defined.
 *
 * @author Leo Rudin
 */
@SpringBootApplication
@ComponentScan("ch.zhaw.smartervote")
public class TestApplication {}
