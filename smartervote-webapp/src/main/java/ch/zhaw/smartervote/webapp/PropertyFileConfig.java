package ch.zhaw.smartervote.webapp;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

/**
 * Property file configuration. Declares additional property sources.
 *
 * @author Leo Rudin
 */
@Configuration
@PropertySource(value = "classpath:message.properties",encoding = "UTF-8")
public class PropertyFileConfig {}