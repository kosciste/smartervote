package ch.zhaw.smartervote.persistency;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.springframework.stereotype.Component;

/**
 * Singleton that holds the session factory object to open new sessions to interact with the database. Factory
 * object is created when the getSession function is called for the first time.
 *
 * @author Leo Rudin
 */
@Component("databaseConnection")
public class DatabaseConnection {

    /**
     * Session factory.
     */
    private static SessionFactory FACTORY;

    /**
     * Creates a new session. First checks if session factory exists and creates one, otherwise works
     * with existing instance.
     *
     * @return session
     */
    public Session createSession() {
        if (FACTORY == null) {
            FACTORY = createSessionFactory();
        }

        return FACTORY.openSession();
    }

    /**
     * Creates a session factory instance based on the hibernate.cfg.xml config file.
     *
     * @return session factory
     */
    private SessionFactory createSessionFactory() {
        final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                .configure() // configures settings from hibernate.cfg.xml
                .build();
        try {
            return new MetadataSources(registry).buildMetadata().buildSessionFactory();
        } catch (Exception ex) {
            StandardServiceRegistryBuilder.destroy(registry);
            throw new IllegalStateException("Unable to create session factory: " + ex.getMessage(), ex);
        }
    }

}
