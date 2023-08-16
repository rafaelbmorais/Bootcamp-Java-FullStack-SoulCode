package aula230816.interfaces;

public class Triangulo implements Forma {

    private double base;
    private double altura;

    public Triangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    @Override
    public double calculaArea() {
        return (base * altura) / 2;
    }

    @Override
    public double calculaPerim() {
        return base * 3;
    }


}
