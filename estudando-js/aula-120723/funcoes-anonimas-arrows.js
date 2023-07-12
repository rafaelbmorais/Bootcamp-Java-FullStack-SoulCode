// CALLBACK
function requisicaoParaBanco(callbackError) { // callbackError é um apelido para a função que é passado como argumento
    for(let i = 0; i < 10000000000; i++) { // requisição feita para o servidor (simulação)
        if(i === 1000000) { // irá gerar um erro
            callbackError(); // chama uma função que executará o que foi estipulado para tratar esse erro
        }
    }
}

function erro() {
    console.log("DEU RUIM!");
}

// requisicaoParaBanco(erro);

// =========


// FUNÇÃO ANÔNIMA
function teste() {
    console.log("Olá, Mundo!");
}

teste();

// setTimeout(teste, 5000);
// setInterval(teste, 2000);
