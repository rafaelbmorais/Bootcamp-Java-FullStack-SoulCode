package aula230804;

import java.time.LocalDate;
import java.util.List;

public class Venda {
    public LocalDate dataRegistro;
    public String cliente;
    public List<String> produtos;
    private Double precoTotal;

    public Venda() {

    }

    public Venda(LocalDate dataRegistro) {
        setDataRegistro(dataRegistro);
    }

    public Venda(String cliente) {
        setCliente(cliente);
    }

    public Venda(String cliente, LocalDate dataRegistro) {
        setCliente(cliente);
        setDataRegistro(dataRegistro);
    }

    public Venda(LocalDate dataRegistro, String cliente, List<String> produtos, Double precoTotal) {
        setDataRegistro(dataRegistro);
        setCliente(cliente);
        setProdutos(produtos);
        setPrecoTotal(precoTotal);
    }

    public LocalDate getDataRegistro() {
        return dataRegistro;
    }

    public String getCliente() {
        return cliente;
    }

    public List<String> getProdutos() {
        return produtos;
    }

    public Double getPrecoTotal() {
        return precoTotal;
    }

    public void setDataRegistro(LocalDate dataRegistro) {
        this.dataRegistro = dataRegistro;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public void setProdutos(List<String> produtos) {
        this.produtos = produtos;
    }

    public void setPrecoTotal(Double precoTotal) {
        this.precoTotal = precoTotal;
    }

    @Override // anotação -> Indica uma sobrescrita de método
    public String toString() {
        return "Venda{" +
                "dataRegistro=" + dataRegistro +
                ", cliente='" + cliente + '\'' +
                ", produtos=" + produtos +
                ", precoTotal=" + precoTotal +
                '}';
    }
}
