package aula230816.atividades.exercicio2;

public abstract class Pagamento {

    private Float valor;
    private Integer numParcelas;

    public Pagamento() {
    }

    public Pagamento(Float valor, Integer numParcelas) {
        this.valor = valor;
        this.numParcelas = numParcelas;
    }

    public Float getValor() {
        return valor;
    }

    public void setValor(Float valor) {
        this.valor = valor;
    }

    public Integer getNumParcelas() {
        return numParcelas;
    }

    public void setNumParcelas(Integer numParcelas) {
        this.numParcelas = numParcelas;
    }

    public void status() {
        System.out.println("Aceito!");
    }
}
