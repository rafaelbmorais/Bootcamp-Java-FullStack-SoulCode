const semaforo = document.getElementById("img-red");
// const semaforoY = document.getElementById("img-yellow");
// const semaforoG = document.getElementById("img-green");
const botaoR = document.getElementById("btn-red");
const botaoY = document.getElementById("btn-yellow");
const botaoG = document.getElementById("btn-green");
const botaoAuto = document.getElementById("btn-auto");

const imagens = ["imagens/vermelho.png", "imagens/amarelo.png", "imagens/verde.png"];

botaoR.addEventListener("click", () => {
    semaforo.src = imagens[0];
  });
  
  botaoY.addEventListener("click", () => {
    semaforo.src = imagens[1];
  });

  botaoG.addEventListener("click", () => {
    semaforo.src = imagens[2];
  });


  botaoAuto.addEventListener("click", () => {
    // Alterne a imagem a cada 1 segundos
    interval = setInterval(() => {

    }, 1000);
  });
