// Objeto -> estrutura que representa um objeto do mundo real (ex.: Produto, Pessoa, Profissão).
// Objeto pode ser modelado -> Classe (nome deve começar com letra maiúscula).

// não se atribui valores as variaveis dentro das classes, pois a classe representará qualquer livro, no caso.
class Livro {
    titulo;
    paginas;
    autor;
    volume;
    isbn;
    alugar = function() {
        console.log("Alugado!")
    };



    static isLivro(livro) { // isLivro -> é uma função estática, ou seja não será necessário instanciar o objeto para acessa-la
        let flag = livro.titulo == undefined;
        return !flag;
    }

    concat() {
        return `${this.titulo} escrito por ${this.autor}`;
    }

    constructor(titulo, paginas, autor, isbn) {
        this.titulo = titulo;
        this.paginas = paginas;
        this.autor = autor;
        this.isbn = isbn;
        // this -> Referencia a classe/objeto
    }
};

// Para criar a estrutura "física" do objeto pela classe é necessário fazer uma INSTÂNCIA!
let arquiteturaLimpa = new Livro(); // instância do objeto Livro
// console.log(typeof arquiteturaLimpa);

arquiteturaLimpa.titulo = "Arquitetura Limpa";
arquiteturaLimpa.autor = "Robert C. Martin";
arquiteturaLimpa.paginas = 400;
arquiteturaLimpa.isbn = "978-85-508-0460-6";
console.log(arquiteturaLimpa);
arquiteturaLimpa.alugar();


let javaIniciantes = new Livro("Java para iniciantes", 500, "Herbert", "98432842");
javaIniciantes.titulo = "Java para avançados";
// console.log(javaIniciantes);
// console.log(javaIniciantes.concat());

// aplicando o uso do "static"
// let livroTeste = new Livro();
// livroTeste.titulo = "Titulo Teste";
// console.log(Livro.isLivro(livroTeste));


// Objeto é uma estrtura que representa o objeto do mundo real no nosso código.
// Classe -> Planta ou o Modelo do objeto
// Instância é processo de construir o objeto "new Livro()"
// Construtor é a função que gere o objeto fisico
// Caracteristicas -> Atributos/Propriedades, Métodos/Funções

// JavaScript -> Front
// Java -> Back

const objeto = {}; // cria um objeto sem classe
// console.log(typeof objeto);
console.log(objeto);