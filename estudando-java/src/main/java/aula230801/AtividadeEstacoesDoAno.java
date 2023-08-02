package aula230801;
// Crie um enum chamado EstacoesDoAno com os valores representando as estações do ano
//  (Verão, Outono, Inverno e Primavera). Escreva um programa que receba o mês
//   atual do usuário e informe a estação do ano correspondente.

import java.util.Scanner;

enum EstacoesDoAno {
    VERAO, OUTONO, INVERNO, PRIMAVERA
}

public class AtividadeEstacoesDoAno {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o mês do ano: ");
        int mes = entrada.nextInt();
        switch (mes) {
            case 1:
            case 2:
            case 3:
                System.out.println(EstacoesDoAno.VERAO);
                break;
            case 4:
            case 5:
            case 6:
                System.out.println(EstacoesDoAno.OUTONO);
                break;
            case 7:
            case 8:
            case 9:
                System.out.println(EstacoesDoAno.INVERNO);
                break;
            case 10:
            case 11:
            case 12:
                System.out.println(EstacoesDoAno.PRIMAVERA);
                break;
        }

    }
}
