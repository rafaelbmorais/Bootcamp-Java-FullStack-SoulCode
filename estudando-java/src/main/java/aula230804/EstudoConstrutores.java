package aula230804;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class EstudoConstrutores {

    public static void main(String[] args) {
        List<String> produtos = new ArrayList<String>();
        produtos.add("Sapato");
        produtos.add("Cerveja");
        produtos.add("Livro");
        Venda venda1 = new Venda(LocalDate.now(), "José", produtos, 300.00);
        Venda venda2 = new Venda();
        Venda venda3 = new Venda(LocalDate.now());
        Venda venda4 = new Venda("José");
        Venda venda5 = new Venda("Sebastiana", LocalDate.now());

        System.out.println(venda1);
    }
}
