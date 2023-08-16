package aula230816.interfaces;

public class Main {

    public static void mostrarAreaForma(Forma forma) {
        System.out.println("Area " + forma.calculaArea());
        System.out.println("Perimetro " + forma.calculaPerim());
    }

    public static void main(String[] args) {

        Quadrado quadrado = new Quadrado(6);
        Forma triangulo = new Triangulo(8, 6);
        Forma circulo = new Circulo(4);

        mostrarAreaForma(quadrado);
        mostrarAreaForma(triangulo);
        mostrarAreaForma(circulo);
    }
}
