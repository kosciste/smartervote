package ch.zhaw.smartervote.contract;

/**
 * This exception is thrown, when an element does not exist in the database.
 *
 * @author Rapahel Krebs
 */
public class DomainException extends Exception {

    public DomainException(String message) {
        super(message);
    }

}
