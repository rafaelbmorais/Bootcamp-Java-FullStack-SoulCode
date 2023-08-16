package aula230816.atividades.exercicio1;

public class Moto extends Veiculo {

    private String cor;
    private String cilindrada;

    public Moto() {
        super();
    }

    public Moto(String marca, String modelo, Integer ano, String cor, String cilindrada) {
        super(marca, modelo, ano);
        this.cor = cor;
        this.cilindrada = cilindrada;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCilindrada() {
        return cilindrada;
    }

    public void setCilindrada(String cilindrada) {
        this.cilindrada = cilindrada;
    }
}
