package aula230816.atividades.exercicio2;

// Implemente um sistema de pagamento com diferentes métodos (CartaoCredito, PayPal, BoletoBancario)
//        que possam ser usados de forma polimórfica.

public class Main {

    public static void main(String[] args) {

//        CartaoCredito cartao1 = new CartaoCredito();
//        cartao1.setBandeira("Visa");
//        System.out.println(cartao1.getBandeira());

        Pagamento cartao2 = new CartaoCredito();
        cartao2.status();

        Pagamento pay1 = new PayPal();
        pay1.status();

        Pagamento boleto1 = new Boleto();
        boleto1.status();

    }
}
