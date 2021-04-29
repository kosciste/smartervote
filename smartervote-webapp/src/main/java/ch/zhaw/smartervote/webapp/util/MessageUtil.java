package ch.zhaw.smartervote.webapp.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Utility class to create messages that are then displayed in a predefined template in the UI after redirecting.
 *
 * @author Leo Rudin
 */
@Component
public class MessageUtil {

    /**
     * Attribute name that contains the class that represents the message.
     */
    private static final String ALERT_CLASS_ATTR_NAME = "alertClass";

    /**
     * Attribute name for the actual message.
     */
    private static final String ALERT_MESSAGE_ATTR_NAME = "message";

    /**
     * Class name for the class that should is displaying the alert error messages.
     */
    private static final String ALERT_CLASS_NAME = "alert-danger";

    /**
     * Environment used to access the spring environment and properties.
     */
    private final Environment environment;

    @Autowired
    public MessageUtil(Environment environment) {
        this.environment = environment;
    }

    /**
     * Adds a new error message that is flashed to the session using the given redirect attributes object.
     *
     * @param redirectAttributes redirect attributes used to flash the message
     * @param key property id of the message
     */
    public void createErrorMessage(RedirectAttributes redirectAttributes, String key) {
        String message = environment.getProperty(key, "Unknown property: " + key);

        redirectAttributes.addFlashAttribute(ALERT_CLASS_ATTR_NAME, ALERT_CLASS_NAME);
        redirectAttributes.addFlashAttribute(ALERT_MESSAGE_ATTR_NAME, message);
    }

}
