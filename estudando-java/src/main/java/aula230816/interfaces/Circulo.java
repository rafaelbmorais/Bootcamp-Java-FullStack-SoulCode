package aula230816.interfaces;

public class Circulo implements Forma {

    private double raio;

    public Circulo(double raio) {
        this.raio = raio;
    }

    @Override
    public double calculaArea() {
        return 3.14 * (raio * raio);
    }

    @Override
    public double calculaPerim() {
        return 2 * 3.14 * raio;
    }
}
