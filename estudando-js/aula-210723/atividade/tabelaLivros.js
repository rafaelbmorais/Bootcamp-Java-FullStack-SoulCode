import { melhoresLivros } from "./livros.js";

function exibirTabela(livros) {
    const tabela = document.querySelector("#tabela-livros");
    tabela.innerHTML = "";
    for(let livro of livros) {
        tabela.innerHTML += `
            <tr>
                <td>${livro.titulo}</td>
                <td>${livro.autor}</td>
                <td>${livro.anoPublicacao}</td>
                <td>${livro.genero}</td>
            </tr>
        `;
    }
}

exibirTabela(melhoresLivros);