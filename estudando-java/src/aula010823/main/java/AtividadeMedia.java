// Implemente um método que receba uma lista de números e
//        retorne a média aritmética dos elementos presentes na lista.

import java.util.ArrayList;
import java.util.List;

public class AtividadeMedia {

    public static void main(String[] args) {

        List<Integer> listaNum = new ArrayList<Integer>(List.of(10, 28, 30, 38, 52));

        int soma = 0;
        for (int numero : listaNum) {
            soma += numero;
        }

        Double media = (double) (soma / listaNum.size());

        System.out.println("A média aritmética da lista é: " + media);

    }
}
