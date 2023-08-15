package aula230815.polimorfismo;

public abstract class Animal {
    private String nome;
    private String especie;
    private String habitat;

    public Animal() {
    }

    public Animal(String nome, String especie, String habitat) {
        this.nome = nome;
        this.especie = especie;
        this.habitat = habitat;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getHabitat() {
        return habitat;
    }

    public void setHabitat(String habitat) {
        this.habitat = habitat;
    }

    public void emitirSom() {
        System.out.println("Oi!");
    }
}
