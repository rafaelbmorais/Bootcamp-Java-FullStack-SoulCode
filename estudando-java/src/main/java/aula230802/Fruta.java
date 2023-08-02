package aula230802;

public class Fruta {

    String nome;
    String cor;
    int acidez;
    boolean suculencia;

    boolean maduro = false;

    void amadurecer(int dias) {
        maduro = true;
    }
}
