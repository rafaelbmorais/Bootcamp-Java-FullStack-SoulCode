package aula230804.atividade;

import java.util.ArrayList;
import java.util.List;

public class Banco {

    private List<Conta> contas;

    public Banco() {
        this.contas = new ArrayList<Conta>();
    }

    public Banco(List<Conta> contas) {
        this.contas = contas;
    }

    public List<Conta> getContas() {
        return contas;
    }

    public void setContas(List<Conta> contas) {
        this.contas = contas;
    }

    public void criarConta(Cliente cliente) {
        Conta conta = new Conta();
        conta.setCliente(cliente);
        conta.setSaldo(0.0);
        conta.setNumeroConta(this.contas.size()+1);
        this.contas.add(conta);
    }

    public Conta buscarConta(Integer numeroConta) {
        for (Conta c : contas) {
            if (c.getNumeroConta().equals(numeroConta)) { // com os wrappers pode ser usado o equals() para fazer comparação
                return c;
            }
        }
        return null;
    }

    public void listarContas() {
        for (Conta conta : contas) {
            System.out.println(conta);
        }
    }

    @Override
    public String toString() {
        return "Banco{" +
                "contas=" + contas +
                '}';
    }
}
