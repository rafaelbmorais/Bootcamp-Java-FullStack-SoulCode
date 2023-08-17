package aula230816.atividades.exercicio5;

//    Desenvolva um sistema de reservas que permite aos usuários reservarem lugares em um evento.
//        Implemente uma classe Event que possui um número limitado de vagas disponíveis.
//        Lance uma exceção personalizada chamada NoMoreSeatsException quando todas as vagas
//        estiverem esgotadas e um usuário tentar fazer uma reserva.

public class Main {

    public static void main(String[] args) {

        Event event = new Event();

        event.adicionarReserva("Ludmila");
        event.adicionarReserva("Matheus");
        event.adicionarReserva("Felipe");
        event.adicionarReserva("Nicolas");
        event.adicionarReserva("Leonardo");

        event.adicionarReserva("Gabriela");
    }

}
