// Crie um programa que receba 5 números do usuário e armazene-os em uma lista.
//        Em seguida, exiba o maior e o menor número da lista.

import java.text.CollationKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class AtividadeMaiorMenor {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int n = 0;
        List<Integer> numeros = new ArrayList<Integer>();

        while (n < 5) {
            System.out.println("Digite um número para a posição " + n + " : ");
            int num = entrada.nextInt();
            numeros.add(num);
            n++;
        }

        Collections.sort(numeros);
        System.out.println(numeros.get(0));
        System.out.println(numeros.get(numeros.size() - 1));
    }
}
