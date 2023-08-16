package aula230816.exceptions;

public class EstudoThrows {

    public static void validarCPF(String cpf) throws Exception {
        if(cpf.length() != 11) {
            throw new IllegalArgumentException("CPF inválido!");
        }
        System.out.println("CPF válido!");
    }

    public static void main(String[] args) {

        try {
            validarCPF("12345678900");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
