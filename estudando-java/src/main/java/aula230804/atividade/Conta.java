package aula230804.atividade;

public class Conta {

    private Integer numeroConta;
    private Double saldo;
    private Cliente cliente;

    public Conta() {

    }

    public Conta(Integer numeroConta, Double saldo, Cliente cliente) {
        this.numeroConta = numeroConta;
        this.saldo = saldo;
        this.cliente = cliente;
    }

    public Integer getNumeroConta() {
        return numeroConta;
    }

    public Double getSaldo() {
        return saldo;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setNumeroConta(Integer numeroConta) {
        this.numeroConta = numeroConta;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public void depositar(Double valor) {
        if(valor > 0.0) {
            this.saldo += valor;
        }
    }

    public void sacar(double valor) {
        if(this.saldo >= valor) {
            this.saldo -= valor;
        }
    }

    @Override
    public String toString() {
        return "Conta{" +
                "numeroConta=" + numeroConta +
                ", saldo=" + saldo +
                ", cliente=" + cliente +
                '}';
    }
}
