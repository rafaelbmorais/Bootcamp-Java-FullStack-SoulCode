package aula230815.polimorfismo;

public class Main {

    public static void main(String[] args) {

        // a classe Animal é abstrata, portanto não pode ser instanciada.
        // Serve somente como modelo para as suas classes filhas.
//        Animal rato = new Animal("Rato", "Mus musculus", "Terrenos Baldios");
//        System.out.println(rato.getNome());
//        System.out.println(rato.getEspecie());
//        System.out.println(rato.getHabitat());

        Gato gato1 = new Gato();
        Animal gato2 = new Gato();
        Animal cachorro = new Cachorro();

        gato1.setCorPelo("Marrom");
        System.out.println(gato1.getCorPelo());
//        gato2.setCorPelo("Pedrês"); // Inválido
//        System.out.println(gato2.getCorPelo()); // Inválido

        gato2.emitirSom();
        cachorro.emitirSom();

    }
}
