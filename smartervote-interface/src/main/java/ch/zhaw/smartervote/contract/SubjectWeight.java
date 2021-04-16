package ch.zhaw.smartervote.contract;

/**
 * The possible weights of a question. Use {@link SubjectWeight#ordinal()} to get the number representation of the
 * weights.
 *
 * @author Raphael Krebs
 */
public enum SubjectWeight {
    NOT_INTERESTED, NOT_IMPORTANT, NORMAL, IMPORTANT, VERY_IMPORTANT
}
