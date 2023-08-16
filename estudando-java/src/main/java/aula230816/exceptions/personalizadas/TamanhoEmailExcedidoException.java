package aula230816.exceptions.personalizadas;

public class TamanhoEmailExcedidoException extends RuntimeException {

    public TamanhoEmailExcedidoException() {
    }

    public TamanhoEmailExcedidoException(String message) {
        super(message);
    }
}
