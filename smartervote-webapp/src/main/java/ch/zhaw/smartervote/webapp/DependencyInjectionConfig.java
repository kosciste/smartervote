package ch.zhaw.smartervote.webapp;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * Configuration for dependency injection. Declares places where spring should scan for implementation
 * classes.
 *
 * @author Leo Rudin
 */
@Configuration
@ComponentScan("ch.zhaw.smartervote.domain") // core implementation
@ComponentScan("ch.zhaw.smartervote.persistency.repositories.impl") // persistency implementation
@ComponentScan("ch.zhaw.smartervote.persistency") // persistency database connection
public class DependencyInjectionConfig {}
