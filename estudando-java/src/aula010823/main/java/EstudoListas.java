import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class EstudoListas {

    public static void main(String[] args) {

        // vetor é diferente de lista em Java, vetor tem tamanho definido (não cresce), já a lista é flexível.
        // vetor -> é inflexível
        // lista -> é flexível

        // devemos sempre declarar o tipo do conteúdo da lista entre os sinais <tipo>, conhecido como generic.
        // wrapper -> representação do tipo primitivo como objeto
        // Integer -> int
        // Double -> double
        // Boolean -> boolean
        // Long -> long
        // Float -> float

        // lista trabalha com índice, assim como os vetores.
        List<Integer> numeros = new ArrayList<Integer>(); // o <tipo> pode ser declarado como no exemplo, como também
                                                        // pode ser somente junto com List ou somente junto com o Arraylist.

        numeros.add(9); // adiciona os elementos na lista
        numeros.add(4);
        numeros.add(5);
        numeros.add(8);

        System.out.println(numeros.get(0)); // busca o elemento que está no indice 0;
        numeros.remove(2); // remove o item que está no indice 2

        for (int i = 0; i < numeros.size(); i++) {
            System.out.print(numeros.get(i));
        }

        System.out.println(); // para quebrar linha

        for (Integer numero : numeros) { // pega cada numero da lista
            System.out.print(numero);
        }

        Collections.sort(numeros); // ordena a lista

        for (Integer numero : numeros) { // imprime a lista ordenada
            System.out.print(numero);
        }

        System.out.println();// quebra de linha

        List<String> nomes = new ArrayList<String>(List.of("Gabriel", "Sky", "Ludmilla", "Leonardo"));
        Collections.sort(nomes); // ordena a lista

        nomes.add("Rafael");

        for (String nome : nomes) {
            System.out.print(nome + " ");
        }

    }
}
