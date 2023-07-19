// Evento -> Ação (cliques e movimentos do mouse, digitar no teclado)
// click -> clique do mouse
// dblclick -> duplo do mouse
// keydown -> apertar o botão
// keyup -> soltar o botão
// mouseover -> mover o ponteiro do mouse sobre o elemento
// mouseout -> mover o ponteiro do mouse para fora do elemento
// submit -> submeter os dados de um formulário
// change -> alterar o avlor de um campo de formulario
// focus -> evento acionado quando o foco está sobre o elemento.

const quadrado = document.querySelector("#quadrado");
console.log({quadrado});
quadrado.onclick = () => { // primeira forma de adicionar um "ouvidor de evento"
    quadrado.style.backgroundColor = "green";
    // quadrado.style.borderRadius = "0";
    quadrado.style.transform = "translate(200px)"
}

quadrado.ondblclick = () => {
    quadrado.style.backgroundColor = "blueviolet";
    // quadrado.style.borderRadius = "100px";
    quadrado.style.transform = "translate(0px)"
}

function changeColorSquare() { // esta função está sendo chamada no html
    quadrado.style.backgroundColor = "blue";
}

quadrado.addEventListener("mouseout", () => { // terceira forma de adicionar um "ouvidor de evento"
    quadrado.style.backgroundColor = "orange";
})