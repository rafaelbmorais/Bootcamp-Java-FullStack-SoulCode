//enum NivelAcesso {
//    COMUM, USUARIO, ADMINISTRADOR
//}
//
//class Pessoa {
//    public String nome;
//    public int idade;
//    public NivelAcesso nivelAcesso;
//
//    // atalho para criar construtor é 'alt + insert'
//    // o construtor é criado sempre da forma -> public + nome da classe
//    public Pessoa(String nome, int idade, NivelAcesso nivelAcesso) {
//        this.nome = nome;
//        this.idade = idade;
//        this.nivelAcesso = nivelAcesso;
//    }
//}
//
//public class EstudoEnums {
//
//    public static void main(String[] args) {
//        Pessoa davi = new Pessoa();
//        davi.nome = Davi;
//        davi.idade = 8;
//        davi.nivelAcesso = NivelAcesso.USUARIO;
//
//        if(davi.nivelAcesso == NivelAcesso.ADMINISTRADOR) {
//            System.out.println("Libera tudo!");
//        }
//        else if(davi.nivelAcesso == NivelAcesso.USUARIO) {
//            System.out.println("Libera somente área privada!");
//        }
//        else if(davi.nivelAcesso == NivelAcesso.COMUM) {
//            System.out.println("Libera somente área pública!");
//        }
//        else {
//            throw new RuntimeException("Usuário não existe!");
//        }
//    }
//}
