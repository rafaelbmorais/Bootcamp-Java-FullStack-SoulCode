// window.document -> Objeto que representa o documento HTML
// document.getElementById() -> Busca pelo id do elemento
// document.getElementsByClassName() -> Busca todos os elementos por class
// document.getElementsByTagName() -> Busca todos os elementos pelo nome da tag
// document.querySelector() -> Busca do elemento com base no seu seletor CSS


// window.document.getElementById();
let titulo = document.getElementById("titulo"); // é muito utilizado antes
// let titulo = document.querySelector("#titulo"); // parapelo do getElementById
let paragrafos = document.getElementsByClassName("paragrafo");
let negritos = document.getElementsByTagName("b");
let campoEmail = document.querySelector("input[type=email]");
let negritoParagrafo = document.querySelector("p b"); // é muito aplicado hoje
let negritosParagrafo = document.querySelectorAll("p b"); // é muito aplicado hoje

// titulo.align = "right";
// titulo.title = "Titulo Principal";
// titulo.style.color = "cyan";
// titulo.style.fontSize = "100px";
let paragrafo = document.querySelector("p");
paragrafo.innerHTML = "Hoje na aula de <b>JavaScript</b> conversamos sobre DOM. Entendi muita coisa. Da para criar muitas ideias."
// console.log(paragrafo.innerText); // conteudo textual do elemento
// console.log(paragrafo.innerHTML); // conteudo textual + html do elemento


// uso de classes com JavaScript
let caixa = document.querySelector('#informe');
caixa.classList.add("erro"); // adiciona uma nova classe
caixa.classList.remove("mensagem"); // remove uma classe
caixa.classList.toggle("atencao"); // adiciona se não existe
caixa.classList.toggle("atencao"); // remove se existir
console.log(caixa);