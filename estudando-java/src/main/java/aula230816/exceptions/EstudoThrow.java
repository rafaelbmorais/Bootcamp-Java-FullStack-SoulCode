package aula230816.exceptions;

import aula230816.exceptions.personalizadas.EmailMalFormatadoException;
import aula230816.exceptions.personalizadas.TamanhoEmailExcedidoException;

public class EstudoThrow {

//    public static void setIdade(int idade) {
//        if (idade < 0) {
//            // lançamento de erro
//            throw new IllegalArgumentException();
//        }
//        System.out.println("Idade setada " + idade);
//    }

    public static void validarEmail(String email) {
        if(email == null) {
            throw new NullPointerException();
        }
        if(email.isBlank() || !email.contains("@")) {
            throw new EmailMalFormatadoException();
        }
        if(email.length() > 255) {
            throw new TamanhoEmailExcedidoException();
        }
        System.out.println("E-mail válido!");
    }

    public static void main(String[] args) {

        String email = "sasasa.com";
        try {
            validarEmail(email);
        } catch (EmailMalFormatadoException | NullPointerException ex) {
            System.out.println("E-mail incompleto!!");
        } catch (TamanhoEmailExcedidoException ex) {
            System.out.println("Tamanho do e-mail excedido!");
        } catch (Exception ex) {
            System.out.println("Ocorreu um erro que eu não faço ideia de qual é!");
        }


//        try {
//            setIdade(-34);
//        } catch (IllegalArgumentException ex) {
//            System.out.println("Idade Inválida!");
//        }
    }
}
