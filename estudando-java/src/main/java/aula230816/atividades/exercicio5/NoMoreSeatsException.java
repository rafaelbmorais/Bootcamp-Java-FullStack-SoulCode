package aula230816.atividades.exercicio5;

public class NoMoreSeatsException extends RuntimeException {

    public NoMoreSeatsException() {
    }

    public NoMoreSeatsException(String message) {
        super(message);
    }
}
