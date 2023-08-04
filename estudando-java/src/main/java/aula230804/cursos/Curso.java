package aula230804.cursos;

import java.util.List;

public class Curso {
    // Composição de Objetos -> Representação de Objetos dentro de outros objetos

    private String nome;
    private Float cargaHoraria;
    private Professor professor; // essa variável foi criada com a Class Professor
    private List<Aluno> alunos; // essa também foi criada com uma classe, chamada Aluno

    public Curso() {

    }

    public Curso(String nome, Float cargaHoraria, Professor professor, List<Aluno> alunos) {
        this.nome = nome;
        this.cargaHoraria = cargaHoraria;
        this.professor = professor;
        this.alunos = alunos;
    }

    public String getNome() {
        return nome;
    }

    public Float getCargaHoraria() {
        return cargaHoraria;
    }

    public Professor getProfessor() {
        return professor;
    }

    public List<Aluno> getAlunos() {
        return alunos;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCargaHoraria(Float cargaHoraria) {
        this.cargaHoraria = cargaHoraria;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }

    public void setAlunos(List<Aluno> alunos) {
        this.alunos = alunos;
    }

    @Override
    public String toString() {
        return nome + " " + cargaHoraria + " " + professor + " " + alunos;
    }
}
