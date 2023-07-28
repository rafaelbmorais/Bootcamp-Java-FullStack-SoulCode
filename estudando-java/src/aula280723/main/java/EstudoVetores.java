import java.util.Scanner;

public class EstudoVetores {

    public static void main(String[] args) {
        int[] vetor = {1, 2, 3, 4, 5}; // vetor de números inteiros
//        double[] notas = new double[60]; // geralmente o vetor é declarado dessa forma e posteriormente populado
//
//        notas[59] = 9.2;
//        System.out.println(notas[59]);
//
//        System.out.println(vetor[4]);
//        vetor[4] = 8;
//        System.out.println(vetor[4]);

        String[] nomes = {"Carol", "Rafael"};
        String nomes2[] = {"Carol", "Rafael"}; // o vetor pode ser declarado dessa forma também

        for(int i = 0; i < vetor.length; i++) { // intera sobre o vetor
            System.out.println(vetor[i]);
        }
        System.out.println(); // quebra de linha

        for(int num : vetor) { // for each do Java, mais utilizada
            System.out.print(num);
        }
        System.out.println(); // quebra de linha


        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite o número de notas: ");
        int nNotas = entrada.nextInt();

        double[] notas = new double[nNotas];
        for(int i = 0; i < nNotas; i++) {
            System.out.println("Digite a nota: ");
            notas[i] = entrada.nextDouble(); // guarda notas no vetor
        }

        double media = 0.0;
        for(double nota : notas) {
            media += nota; // soma todas as notas
        }
        media /= nNotas; // calculo da media com base no numero de notas
        System.out.printf("A média de notas é igual a %.2f.", media);

    }
}
