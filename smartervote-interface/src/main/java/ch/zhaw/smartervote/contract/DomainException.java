package ch.zhaw.smartervote.contract;

/**
 * General exception that is thrown in case of issues on the domain layer.
 *
 * @author Rapahel Krebs
 */
public class DomainException extends Exception {

    public DomainException(String message) {
        super(message);
    }

}
