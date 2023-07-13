// VETORES - ARRAYS (variável composta)
let nota = 9.6; // variável simples
let notas = [6.5, 7.8, 9.0]; // variável composta
let times = ["Botafogo", "Grêmio", "Palmeiras", "Vasco"]; // varável composta
let ativados = [true, false, false, true];
// é uma boa prática os vetores/arrays conterem dados somente do mesmo tipo
console.log(typeof nota); // nymber
console.log(typeof notas); // object
console.log(notas.length); // tamanho do vetor

let pesos = [89.5, 60.0, 45.4, 67.0, 75.3];
console.log(pesos.length);
console.log(pesos[0]); // indice -> numero que representa a posição do elemento, começa a partir do zero.
console.log(pesos[0] + pesos[2])
console.log(pesos);

for(let i = 0; i < pesos.length; i++) {  // imprimir com for
    console.log(pesos[i]);  // itera sobre o vetor
}


let operacoes = [
    (n1, n2) => n1 + n2,
    (n1, n2) => n1 - n2,
    (n1, n2) => n1 * n2,
    (n1, n2) => n1 / n2
];
console.log(operacoes[0](3, 4));


// FOR EACH para os valores do vetor
for(let peso of pesos) {  // uma forma melhor de usar FOR com vetores.
    console.log(peso);
}


// FOR EACH para os indices do vetor
for(let indice in pesos) {
    console.log(indice);
    console.log(pesos[indice]);
}