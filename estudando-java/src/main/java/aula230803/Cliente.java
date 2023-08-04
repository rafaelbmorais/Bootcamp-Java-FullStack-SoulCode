package aula230803;

import java.time.LocalDate;

public class Cliente {

    // get (obter) e set (inserir) ENCAPSULAMENTO

    private String nome;
    private Integer idade;
    private Double altura;
    private String cpf;
    private String email;
    private LocalDate dataNascimento;

    // Construtor -> Método Especial
    // this -> Palavra Chave -> Objeto

    public Cliente(String nome, Integer idade, Double altura) {
        cpf = "000.000.000-00";
        setNome(nome);
        setIdade(idade);
        setAltura(altura);
    }


    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getIdade() {
        return this.idade;
    }

    public void setIdade(Integer idade) {
        this.idade = idade;
    }

    public Double getAltura() {
        return altura;
    }

    public void setAltura(Double altura) {
        this.altura = altura;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public boolean validarCpf() {
        return cpf.contains(".");
    }

    public static boolean validarEmail(String email) {
        return email.contains("@");
    }
}