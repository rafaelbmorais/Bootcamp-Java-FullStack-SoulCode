package aula230802;

// POO -> Programação Orientada a Objetos:
//      - Classes -> Fruta (modelagem, "forma")
//      - Objetos -> Maçã, Banana, Pera, Melancia
//      - Instância -> Processo que constrói um objeto a partir de uma classe (usa-se a palavra new para instanciar).
//      - Atributo/Propriedade -> Um valor definido na classe incorporado no objeto
//      - Métodos/Função -> Uma rotina/procedimento/tarefa que é feito pelo objeto.



public class EstudoClasses {

    public static void main(String[] args) {

        Fruta maca = new Fruta(); // criar/instanciar um objeto.
        maca.nome = "Maçã";
        maca.cor = "Vermelha";
        maca.acidez = 7;
        maca.suculencia = true;

        System.out.println(maca.nome);
    }
}
