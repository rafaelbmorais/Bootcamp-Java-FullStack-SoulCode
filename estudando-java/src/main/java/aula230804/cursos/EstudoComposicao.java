package aula230804.cursos;

import org.w3c.dom.ls.LSOutput;

import java.util.ArrayList;
import java.util.List;

public class EstudoComposicao {

    public static void main(String[] args) {

        Aluno aluno1 = new Aluno("Sebastiana", "123456789");
        Aluno aluno2 = new Aluno("José", "987654321");
        Aluno aluno3 = new Aluno("Renato", "123654987");
        List<Aluno> alunos = new ArrayList<Aluno>(List.of(aluno1, aluno2, aluno3));

        Professor professor = new Professor("Almir", "12345678-9");

        Curso curso = new Curso("Java", 200.0F, professor, alunos);

        System.out.println(curso.getProfessor().getNome()); // sempre tem uma ordem para a chamada
        System.out.println(curso);
        System.out.println(curso.getAlunos().get(2).getNome());

    }
}
