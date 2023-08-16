package aula230816.atividades.exercicio2;

import java.time.LocalDate;

public class Boleto extends Pagamento {

    private LocalDate dataVencimento;

    @Override
    public void status() {
        System.out.println("Emitido!");
    }

    public LocalDate getDataVencimento() {
        return dataVencimento;
    }

    public void setDataVencimento(LocalDate dataVencimento) {
        this.dataVencimento = dataVencimento;
    }
}
