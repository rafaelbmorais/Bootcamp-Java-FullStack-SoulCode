package aula230815.heranca;

public class Livro extends Produto {

    // pai -> superclasse -> Produto
    // filho -> subclasse -> Livro

    private Integer numPaginas;
    private String isbn;

    public Livro() {
        super(); // construtor da classe pai
    }

    public Livro(String nome, Float preco, String codigo, Integer numPaginas, String isbn) {
        super(nome, preco, codigo); // construtor da classe pai que recebe os parametros
        this.numPaginas = numPaginas;
        this.isbn = isbn;
    }

    public Integer getNumPaginas() {
        return numPaginas;
    }

    public void setNumPaginas(Integer numPaginas) {
        this.numPaginas = numPaginas;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
}
