package ch.zhaw.smartervote.persistency;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * Configuration class to configure the jpa repository and entity locations.
 *
 * @author Leo Rudin
 */
@Configuration
@EnableJpaRepositories("ch.zhaw.smartervote.persistency.repositories") // package where all repositories are located
@EntityScan( basePackages = {"ch.zhaw.smartervote.persistency.entities"} ) // package where all entities are located
public class SpringJpaConfiguration {}