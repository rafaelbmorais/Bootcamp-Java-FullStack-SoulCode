// ==== CALLBACK
function requisicaoParaBanco(callbackError) { // callbackError é um apelido para a função que é passada como argumento
    for(let i = 0; i < 10000000000; i++) { // requisição feita para o servidor (simulação)
        if(i === 1000000) { // irá gerar um erro
            callbackError(); // chama uma função que executará o que foi estipulado para tratar esse erro, no caso function erro(){}
        }
    }
}

function erro() {
    console.log("DEU RUIM!");
}

// requisicaoParaBanco(erro);

// =================================================================


// ===== FUNÇÃO ANÔNIMA

// function {
// }

// essa é uma função normal que será usada como exemplo do callback com função anônima
function teste() {
    console.log("Olá, Mundo!");
}

// aqui é chamada a função setTimeout, usando como um dos argumentos a função teste
// setTimeout(teste, 5000);

// essa função abaixo, chamada de Função Anônima, é a mesma que a de cima - função teste(), mas de uma forma reduzida. 
// Ela é dessa forma quando você precisa utilizar apenas uma única vez!
setTimeout(function() {
    console.log("Olá, Mundo!");
}, 5000);

// aqui é chamada a função setInterval, usando como um dos argumentos a função teste
// setInterval(teste, 2000);

// essa função abaixo, chamada de Função Anônima, é a mesma que a de cima - função teste(), mas de uma forma reduzida. 
// Ela é dessa forma quando você precisa utilizar apenas uma única vez!
setInterval(function(){
    console.log("Olá, Mundo usando setInterval")
}, 2000);

// ================================================================+


// ===== ARROW FUNCTIONS ()=> (Funções de Seta, Funções Anônimas)

// Essa é uma função Anônima
setTimeout(function() {
    console.log("SetTimeout com Função Anônima");
}, 2000);


// Essa é uma Função Arrow, porque usa somente os parenteses e =>
setTimeout(() => {
    console.log("SetTimeout com Função Arrow");
}, 2000);


// function() {  // essa é uma Função Anônima
// }

// () => {   // essa é uma arrow function
// }

//parametros => escopo/intrução
(resultado, requisicao) => {
    console.log(resultado + " " + requisicao)
    return 0;
}


// Testando a utilização das arrow functions
function teste(callback) {
    let valor = callback(130);
    console.log(valor);
}

// Primeira forma de executar "teste" (Função Expression)
function vezes2(numero) {
    return (numero * 2);
}

// Segunda forma de excutar "teste" (Função Anônima)
teste(function(numero) {
    return (numero * 2);
});

// Terceira forma de executar "teste" (Função Arrow) - Modo 1
teste((numero) => {
    return (numero * 2);
})

// Terceira forma de executar "teste" (Função Arrow) - Modo 2
// nesse caso o parenteses é retirado do argumento da função, isso só pode acontecer se tiver apenas um argumento.
teste(numero => {
    return (numero * 2);
})

// Quarta Forma de executar "teste" (Função Arrow)
teste(numero => (numero * 2)); // pode-se omitir o return e as {} quando há apenas uma instrução


// setTimeout(() => console.log("Olá, Mundo!"), 3000); // pode ser usado () ou _ quando não há parametros


// Recursividade -> chama da função pela mesma função
function fatorial(numero) {
    if(numero == 1) {
        return 1;
    }
    return numero * fatorial(numero - 1);
}
console.log(fatorial(4));