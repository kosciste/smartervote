package ch.zhaw.smartervote.contract;

/**
 * This exception is thrown, when an element does not exist in the database.
 *
 * @author Rapahel Krebs
 */
public class ElementNotFoundException extends Exception {

    public ElementNotFoundException(String message) {
        super(message);
    }

}
