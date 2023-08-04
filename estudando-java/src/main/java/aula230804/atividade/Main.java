package aula230804.atividade;

public class Main {

    public static void main(String[] args) {
        Cliente cliente1 = new Cliente("Gabriel", 21, "123.456.789.-00");
        Cliente cliente2 = new Cliente("Almir", 22, "123.456.789.-01");
        Cliente cliente3 = new Cliente("Adriano", 30, "123.456.789.-02");

        Banco banco = new Banco();

        banco.criarConta(cliente1);
        banco.criarConta(cliente1);
        banco.criarConta(cliente1);

        banco.buscarConta(3).depositar(15000.0);
        banco.buscarConta(3).sacar(450.0);

        banco.buscarConta(2).depositar(3000.0);
        banco.buscarConta(2).sacar(350.0);
        banco.buscarConta(2).sacar(150.0);

        banco.listarContas();
    }
}
