public class SaidaDeDados {

    public static void main(String[] args) {
        System.out.print(1); // imprime a saída e permanece na mesma linha.
        System.out.println(2); // imprime a saída e pula para outra linha.

        int n1 = 5;
        int n2 = 7;
        int soma = n1 + n2;
        System.out.printf("A soma de %d e %d é igual a %d.\n", n1, n2, soma);

        String nome = "Rafael";
        System.out.printf("Bem vindo, %s!\n", nome);

        double num1 = 3.4;
        double num2 = 12.2;
        double div = num2 / num1;
        System.out.printf("A divisão de %.2f e %.2f é igual a %.2f.\n", num1, num2, div);

        // %d -> mapeia um número
        // %s -> mapeia um texto
        // %f > mapeia um número flutuante (para limitar o número de casas decimais -> %.2f).
        // usa-se o System.out.printf para imprimir na tela
        // \n para pular para outra linha

    }
}