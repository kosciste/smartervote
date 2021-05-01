package ch.zhaw.smartervote.webapp;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * Configure which packages should be scanned by spring e.g. for dependency injection.
 *
 * @author Leo Rudin
 */
@Configuration
@ComponentScan("ch.zhaw.smartervote") // scan everything that lies under the ch.zhaw.smartervote package
public class ComponentScanConfig {}
