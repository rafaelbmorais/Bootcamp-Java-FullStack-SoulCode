import { melhoresFilmes } from "./filmes.js";

function preencherLista(filmes) {
    const lista = document.querySelector("#lista-filmes");
    lista.innerHTML = "";
    filmes.forEach(filme => {
        lista.innerHTML += `<li>${filme.titulo}</li>`;
    });
}

preencherLista(melhoresFilmes);

// modulo -> partição -> divisão
// modular um projeto -> separar em pequenas partes