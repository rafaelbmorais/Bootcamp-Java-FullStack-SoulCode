package aula230727;

import java.util.Scanner;
public class EstudoEstruturas {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in); // o Sacnner permite a leitura de dados do teclado
        // é necessário usar o pacote  java.util.Scanner
        System.out.println("Digite o seu nome: ");
        String nome = entrada.nextLine(); // aguarda o usuário digitar
        System.out.println(nome);

        System.out.println("Digite sua altura (em metros): ");
//        double altura = entrada.nextDouble(); // para número a leitura da entrada pode ser o nextDouble()
        // para receber o número do teclado é necessário digitar o número com virgula na entrada
//        System.out.println("Sua altura é: " + altura);

        // Exercicio: Leia o peso e a altura da pessoa.
        // Calcule o IMC
        // Verifique a situação do IMC calculado com base em https://www.saude.rj.gov.br/obesidade/calcule-seu-imc
        System.out.println("Digite sua altura (em metros): ");
        double altura = entrada.nextDouble();
        System.out.println("Digite seu peso: ");
        double peso = entrada.nextDouble();
        double IMC = peso / Math.pow(altura, 2);
        if (IMC < 17) {
            System.out.println("Muito abaixo do peso!");
        } else if (IMC >= 17 && IMC < 18.5) {
            System.out.print("Abaixo do peso!");
        } else if (IMC >= 18.50 && IMC < 25) {
            System.out.print("Peso normal!");
        } else if (IMC >= 25 && IMC < 30) {
            System.out.print("Acima do peso!");
        } else if (IMC >= 30 && IMC < 35) {
            System.out.print("Obesidade I!");
        } else if (IMC >= 35 && IMC < 40) {
            System.out.print("Obesidade II (severa)!");
        } else {
            System.out.println("Obesidade III! (mórbida)");
        }


        System.out.println("Selecione uma dieta (de 1 a 3)");
        System.out.println("1 - água");
        System.out.println("2 - fruta");
        System.out.println("3 - batata");

        int opcao = entrada.nextInt();

        switch (opcao) {
            case 1:
                System.out.println("Você escolheu a dieta da água!");
                break;
            case 2:
                System.out.println("Você escolheu a dieta da fruta!");
                break;
            case 3:
                System.out.println("Você escolheu a dieta da batata!");
                break;
            default:
                System.out.println("Escolha uma dieta válida!");
                break;
        }

        System.out.println("Digite sua idade: ");
        int idade = entrada.nextInt();

        String mensagem = (idade >= 18) ? "Você é maior de idade!" : "Você é menor de idade!";
        System.out.println(mensagem);


        // Repetição
        // Início
        // condição de parada
        // atualização do valor

        System.out.println("Digite quantos alimentos você come?");
        int total = entrada.nextInt();

        // FOR
        for(int i = 0; i < total; i++) {
            System.out.println("Você gosta de batata!");
        }

        // WHILE
        // Exercício: Crie uma versão com while do código acima
        int i = 0;
        while(i < total) {
            System.out.println("Você gosta de goiaba!");
            i++;
        }

        // DO WHILE (não é muito utilizado)
        int j = 0;
        do {
            System.out.println("Uhuuul");
            j ++;
        } while(j < total);
    }
}
