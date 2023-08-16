package aula230816.atividades.exercicio5;


public class Event {

    int vetorLugares[] = new int[10];
    private Integer lugar;

    public Event() {
    }

    public Event(int[] vetorLugares, Integer lugar) {
        this.vetorLugares = vetorLugares;
        this.lugar = lugar;
    }

    public int[] getVetorLugares() {
        return vetorLugares;
    }

    public void setVetorLugares(int[] vetorLugares) {
        this.vetorLugares = vetorLugares;
    }

    public Integer getLugar() {
        return lugar;
    }

    public void setLugar(Integer lugar) {
        this.lugar = lugar;
    }
}
