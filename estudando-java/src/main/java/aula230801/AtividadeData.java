package aula230801;
// Escreva um programa que calcule e exiba a data daqui a três semanas a partir da data atual.

import java.time.LocalDate;

public class AtividadeData {

    public static void main(String[] args) {

        LocalDate hoje = LocalDate.now();
        System.out.println(hoje.plusWeeks(3));

    }
}
