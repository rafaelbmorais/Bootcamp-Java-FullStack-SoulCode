package aula230801;
// Implemente um método que receba uma lista de números e
//        retorne a média aritmética dos elementos presentes na lista.

import java.util.ArrayList;
import java.util.List;

public class AtividadeMedia {

    public static Double media(List<Double> numeros) {
        Double soma = 0.0;
        for (Double numero : numeros) {
            soma += numero;
        }
        return (double) (soma / numeros.size());
    }

    public static void main(String[] args) {

        List<Double> listaNum = new ArrayList<Double>(List.of(10.0, 28.0, 30.0, 38.0, 52.0));
        System.out.println("A média aritmética da lista é: " + media(listaNum));

    }
}
