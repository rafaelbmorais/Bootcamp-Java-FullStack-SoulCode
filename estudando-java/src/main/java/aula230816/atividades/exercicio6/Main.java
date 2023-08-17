package aula230816.atividades.exercicio6;

//    Desenvolva um utilitário de conversão de moeda que permite aos usuários converterem entre
//        diferentes tipos de moedas. Implemente um método que aceita o valor, a moeda de origem
//        e a moeda de destino. Caso uma moeda não seja reconhecida, lance uma exceção personalizada.

public class Main {

    public static void main(String[] args) {

        ConversorMoedas cm = new ConversorMoedas();
        cm.converter("real", "dolar", 30.0);
        cm.converter("dolar", "real", 30.0);
        cm.converter("bitcoin", "euro", 40.0);
    }

}
