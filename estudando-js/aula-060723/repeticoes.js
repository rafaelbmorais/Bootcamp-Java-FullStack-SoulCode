// Estruturas de Repetições

// For -> usado para quantidade de repetições determinadas.
// for(declaração variavel e atribuição; condição; incremento ou decremento) {}

// incrementa o valor de numero em uma unidade
for(let numero = 0; numero < 10; numero++) {
    console.log(numero);
}

console.log("=========");

// incrementa o valor de numero em duas unidades
for(let numero = 0; numero < 10; numero = numero + 2) {
    console.log(numero);
}

console.log("=========");

// decrementa o valor de numero em uma unidade
for(let numero = 10; numero > 0; numero--) {
    console.log(numero);
}

console.log("=========");

// While -> usado para quantidade de repetições indeterminadas.
// while(condição) {incremento ou de cremento}

let n = 0;
while( n < 5) {
    console.log("SoulCode + Porto");
    n++;
}


// verifica se um número é primo!
let num = 20;
let ePrimo = true;
for(let i = 2; i < num; i++) {
    if(num % i == 0) {
        ePrimo = false;
    }
}
if(ePrimo) {
    console.log("É Primo!");
} else {
    console.log("Não é primo!");
}