package aula230816.atividades.exercicio2;

public class CartaoCredito extends Pagamento {

    private String bandeira;

    @Override
    public void status() {
        System.out.println("Recusado!");
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandeira) {
        this.bandeira = bandeira;
    }
}
