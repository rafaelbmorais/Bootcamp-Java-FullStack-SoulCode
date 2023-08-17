package aula230816.atividades.exercicio6;

public class MoedaDesconhecidaException extends RuntimeException {

    public MoedaDesconhecidaException() {
    }

    public MoedaDesconhecidaException(String message) {
        super(message);
    }
}
