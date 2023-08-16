package aula230816.exceptions.personalizadas;

public class EmailMalFormatadoException extends RuntimeException {

    public EmailMalFormatadoException () {
    }

    public EmailMalFormatadoException(String message) {
        super(message);
    }
}
