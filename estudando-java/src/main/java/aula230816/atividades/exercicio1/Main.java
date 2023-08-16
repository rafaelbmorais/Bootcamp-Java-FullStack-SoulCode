package aula230816.atividades.exercicio1;

// Crie uma classe Veiculo com propriedades como marca, modelo e ano.
//        Em seguida, crie subclasses como Carro e Moto que herdam de Veiculo.

public class Main {

    public static void main(String[] args) {

        Veiculo carro1 = new Veiculo("Ford", "Mustang", 1977);
        System.out.println(carro1.getMarca());
        System.out.println(carro1.getModelo());
        System.out.println(carro1.getAno());

        Carro carro2 = new Carro("Honda", "Civic", 2020, "Branco", "Automático");
        System.out.println(carro2.getMarca());
        System.out.println(carro2.getModelo());
        System.out.println(carro2.getAno());
        System.out.println(carro2.getCor());
        System.out.println(carro2.getCambio());

        Moto moto1 = new Moto("Honda", "CG Titan", 2015, "Verde", "150");
        System.out.println(moto1.getMarca());
        System.out.println(moto1.getModelo());
        System.out.println(moto1.getAno());
        System.out.println(moto1.getCor());
        System.out.println(moto1.getCilindrada());
    }
}
