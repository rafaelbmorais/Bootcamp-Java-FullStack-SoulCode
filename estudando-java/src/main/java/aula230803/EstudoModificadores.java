package aula230803;

//    Modificadores
//    - Acesso
//        -> public (pode-se acessar fora da classe e fora do pacote que ele foi definido)
//        -> private (não se pode acessar fora da classe, somente dentro da propria classe)
//        -> protected (acessado por classes no mesmo pacote pela propria classe e por seus filhos)
//        -> default (padrão) (acessado somente por classes no mesmo pacote)
//    - Não Acesso
//        -> static (membro da classe)
//        -> final (Definir uma constante)
//    Escapsulamento -> Garantir a consistência dos dados de uma classe


public class EstudoModificadores {

    public static final double PI = 3.1415; // crir uma constante

    public static void main(String[] args) {
//        Cliente.validarEmail("gabriel@mail.com");

        Cliente maria = new Cliente("Maria", 25, 1.70);
        maria.setNome("Maria de Fátima");
        System.out.println(maria.getNome());
        System.out.println(maria.getIdade());
        System.out.println(maria.getDataNascimento());
        System.out.println(maria.getAltura());
        System.out.println(maria.getCpf());
        Cliente joao = new Cliente("João", 21, 1.65);
        joao.setEmail("joao@mail.com");
    }
}