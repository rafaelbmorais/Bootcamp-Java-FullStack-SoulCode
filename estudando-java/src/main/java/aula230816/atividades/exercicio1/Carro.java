package aula230816.atividades.exercicio1;

public class Carro extends Veiculo {

    private String cor;
    private String cambio;

    public Carro() {
        super();
    }

    public Carro(String marca, String modelo, Integer ano, String cor, String cambio) {
        super(marca, modelo, ano);
        this.cor = cor;
        this.cambio = cambio;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCambio() {
        return cambio;
    }

    public void setCambio(String cambio) {
        this.cambio = cambio;
    }
}
