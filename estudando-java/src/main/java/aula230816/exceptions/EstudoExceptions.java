package aula230816.exceptions;

import java.util.Scanner;

public class EstudoExceptions {
    static Scanner scanner;

    public static void main(String[] args) {

        try {
            scanner = new Scanner(System.in);
            // Estrutura para tratamento de exceções
            System.out.println("Digite um numero:");
            Integer num = scanner.nextInt(); // o erro acorreu aqui!!!!!
            System.out.println(num);
        }
        catch(Exception ex) {
            System.out.println("Brother, vc digitou errado.");
            ex.printStackTrace(); // imprime toda a pilha de rastreamento da exceção
        }
        finally {
            // sempre é executado
            System.out.println("Fim!");
            scanner.close();
        }

//        Exemplo de uso na conexão com banco de dados
//        try {
//            abrir conexão com banco de dados
//            efetuar operação de consulta
//        }
//        catch (SQLException ex) {
//            tratar o erro
//        }
//        finally {
//            fechar conexão com banco
//        }
    }
}