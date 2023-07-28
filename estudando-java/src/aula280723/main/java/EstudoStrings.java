import java.util.Scanner;

public class EstudoStrings {

    public static void main(String[] args) {
//        String java = "Java é muito legal!"; // um texto é um objeto
//        System.out.println(java);
//        System.out.println(java.toLowerCase()); // imprime em minúsculas
//        System.out.println(java.toUpperCase()); // imprime em maiúsculas
//        System.out.println(java.charAt(3)); // imprime um caractere com base na sua posição
//        System.out.println(java.indexOf("va")); // imprime o indice do primeiro caractere da substring
//        System.out.println(java.replace("v", "c")); // substitui o primeiro "v" que encontrar por "c".
//        System.out.println(java.replaceAll("a", "i")); // substitui todos os "a" por "i".
//        System.out.println(java.substring(2, 4)); // indice inicial, indice final + 1
//        System.out.println(java.length()); // retorna o tamanho da string
//
//        String nome1 = "Carolina";
//        String nome2 = "CarolinA";
//        System.out.println(nome1 == nome2); // compara os objetos nome1 e nome 2
//        System.out.println(nome1.equals(nome2)); // compara o conteúdo das variáveis nome 1 e nome2
//        System.out.println(nome1.equalsIgnoreCase(nome2)); // ignora a caixa alta ou baixa
//        System.out.println();

        Scanner scanner = new Scanner(System.in);
        String texto = "Vamos para o break, retornamos as 10:35!";
        System.out.println("Digite uma palavra");
        String palavra = scanner.nextLine();

        if(palavra.isEmpty()) {
            System.out.println("Conteúdo vazio!");
        } else if(texto.contains(palavra)) {
            System.out.println("Contém");
        } else {
            System.out.println("Não contém!");
        }

        System.out.println(" ".isEmpty()); // false
        System.out.println(" ".isBlank()); // true (considera os espaços)
    }
}
