package ch.zhaw.smartervote.webapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Starts the spring boot application.
 *
 * @author Leo Rudin
 */
@SpringBootApplication
public class SmartervoteWebappApplication {

	/**
	 * Main method that runs the application.
	 *
	 * @param args arguments
	 */
	public static void main(String[] args) {
		SpringApplication.run(SmartervoteWebappApplication.class, args);
	}

}
