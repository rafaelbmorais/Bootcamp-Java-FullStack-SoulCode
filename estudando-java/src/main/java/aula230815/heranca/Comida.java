package aula230815.heranca;

import java.time.LocalDate;

public class Comida extends Produto {
    private LocalDate prazoDeValidade;
    private Float caloria;

    public Comida() {
        super();
    }

    public Comida(String nome, Float preco, String codigo, LocalDate prazoDeValidade, Float caloria) {
        super(nome, preco, codigo);
        this.prazoDeValidade = prazoDeValidade;
        this.caloria = caloria;
    }

    public LocalDate getPrazoDeValidade() {
        return prazoDeValidade;
    }

    public void setPrazoDeValidade(LocalDate prazoDeValidade) {
        this.prazoDeValidade = prazoDeValidade;
    }

    public Float getCaloria() {
        return caloria;
    }

    public void setCaloria(Float caloria) {
        this.caloria = caloria;
    }
}
