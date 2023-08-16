package aula230816.exceptions;

import java.util.Scanner;

public class EstudoExceptions {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        try {
            System.out.println("Digite um número: ");
            int num = entrada.nextInt();
            System.out.println(num);
        } catch (Exception ex) {
            System.out.println("Você digitou errado! Digite somente números!");
        }


    }
}
