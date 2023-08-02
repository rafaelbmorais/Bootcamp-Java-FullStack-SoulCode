package aula230801;
// Escreva um método que receba um número inteiro e retorne verdadeiro se ele for primo e falso caso contrário.

import java.util.Scanner;

public class AtividadePrimo {

    public static boolean isPrimo(int n) {
        boolean primo = true;
        for(int i = 2; i < n; i++) {
            if(n % i == 0) {
                primo = false;
            }
        }
        return primo;
    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite um numero:");
        int n = entrada.nextInt();
        if(isPrimo(n)) {
            System.out.println("É primo");
        }
        else {
            System.out.println("Não é primo");
        }

    }
}
