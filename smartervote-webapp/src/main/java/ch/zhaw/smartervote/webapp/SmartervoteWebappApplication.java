package ch.zhaw.smartervote.webapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Starts the spring boot application.
 *
 * @author Leo Rudin
 */
@SpringBootApplication // wrapper for: @Configuration, @EnableAutoConfiguration, @ComponentScan
@ComponentScan("ch.zhaw.smartervote") // base package where spring should scan for dependencies e.g. for dependency injection
public class SmarterVoteWebappApplication {

	/**
	 * Main method that runs the application.
	 *
	 * @param args arguments
	 */
	public static void main(String[] args) {
		SpringApplication.run(SmarterVoteWebappApplication.class, args);
	}

}
