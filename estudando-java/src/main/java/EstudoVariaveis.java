public class EstudoVariaveis {
    public static void main(String [] args) {
        // varíável = conatianer de dados
        // tipagem forte - tem que definir o tipo de cada variável
        // para declarar a variável tem que seguir o padrão: <tipo> <nome> = <valor>;

        // tipos primitivos (surgiram com a linguagem): int, long, float, double, char, boolean
        // tipos não primitivos (primeira letra sempre maiúscula): String, List

        // Como declarar variáveis?
        // os nomes das vatiáveis é em Camel Case (a primeira letra da primeira palavra em minuscula e
        // a primeira letra das outras palavras em maiuscula.
        int estoque = 150; // int vai até 2 bilhões
        long populacaoTerra = 7900000000L; // long vai até na casa dos quintilhões e tem que usar o L após os números.
        double salarioDev = 5500.99; // até 15 casas de precisão
        float nota = 7.5F; // até 7 casa de precisão e é usada a letra F depois dos números.
                            // o float não é muito usado em JAVA, só em programas mais antigos
        boolean ativo = true; // true, false
        String nome = "Rafael"; // para String é obrigatório o uso das aspas duplas
        char letra = 'A'; // representa um caractere e usamos sempre as aspas simples

        // Tipagem forte
        int a = 1000;
        a = 2000; // reatribuição / atualização
        // a = "batata"; // impossível atribuir um tipo diferente do que foi declarado

        System.out.println("População da Terra: " + populacaoTerra);
        // sout é o atalho para o System.out.ptintln()
    }
}