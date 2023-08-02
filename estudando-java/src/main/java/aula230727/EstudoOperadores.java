package aula230727;

public class EstudoOperadores {
    public static void main(String[] args) {
        // Operadores matemáticos
        int a = 10;
        int b = 15;
        int soma = a + b;
        int subtracao = a - b;
        int multiplicacao = a * b;
        int divisao = b / a; // o resultado entre dois números int será um número int
                    // nesse caso como as duas variáveis são int o número será arredondado para 1.
                    // para situações de números decimais é melhor declarar, pelo menos, um dos números como double.


        System.out.println("Soma: " + soma);
        System.out.println("Subtração: " + subtracao);
        System.out.println("Multiplicação: " + multiplicacao);
        System.out.println("Divisão: " + divisao);

        // Fazendo a divisão do jeito adequado
        int c = 10;
        double d = 15.0;
        double divisao2 = d / c; // divisão entre double e int é igual a um número double
        System.out.println("Divisão decimal: " + divisao2);

        // Math
        double x = Math.pow(2, 3); // pow é para potência, no caso, potência de 2 elevado a 3
        double y = Math.sqrt(144); // sqrt é rais quadrada, no caso, raiz quadrada de 144

        System.out.println(Math.PI);

        // Incremento / Decremento
        int valor = 5;
        valor++; // valor = valor + 1
        valor--; // valor = valor - 1
        valor += 10; // valor = valor + 10

        // Operadores relacionais
        boolean teste1 = 10 > 5; // true
        boolean teste2 = 5 < 1; // false
        boolean teste3 = 5 == 5; // true
        boolean teste4 = 4 != 5; // ture
        boolean teste5 = 5 >= 5; // true
        boolean teste6 = 6 <= 8; // true

        // Operadores lógico (&&, ||, !)
        boolean teste7 = true && false; // false
        boolean teste8 = true || false; // true
        boolean teste9 = (5 > 10) && (1 < 5); // false
        boolean teste10 = (10 >= 10) || (1 < 5); // true
        boolean teste11 = !teste1; // false

        // Exercicio I
        // Crie duas variáveis peso e altura.
        // Calcule o IMC = peso / (altura * altura)
        // Mostre na tela o IMC

        double peso = 87.0;
        double altura = 1.76;
        double IMC = peso / (altura * altura); // também pode ser double IMC = (peso / Math.pow(altura, 2))
        System.out.println("O IMC é " + IMC);
    }
}