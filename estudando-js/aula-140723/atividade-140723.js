//1- Crie uma função que receba um vetor de números e retorne a soma de todos os elementos.
function retornaSoma (vetorN) {
    let soma = 0;
    for(let i = 0; i < vetorN.length; i++ ) {
        soma += vetorN[i];
    }
    return soma;
}

let vetorN = [1, 9, 20, 5, 8, 17, 31]
console.log(retornaSoma(vetorN));


//2- Crie uma função que receba um vetor de palavras e retorne a concatenação de todas as palavras em uma única string.
function retornaString (vetorP) {
    let conca = "";
    for(let i = 0; i < vetorP.length; i++) {
        conca += vetorP[i];
    }
    return conca;
}

let vetorP = ["Palmeiras", "campeão", "do", "Braseileirão", "2022!"];
console.log(retornaString(vetorP));


//3- Crie uma função que receba um vetor de números e retorne o maior valor presente no vetor.
function maiorValor(vetorN3) {
    let valor = vetorN3[0];
    for(let i = 0; i < vetorN3; i++) {
        if(vetorN3[i] > valor) {
            valor = vetorN3[i];
        }
    }
    return valor; 
}

let vetorN3 = [1, 9, 20, 5, 8, 17, 31, 10, 6];
console.log(maiorValor(vetorN3));

//4- Crie uma função que receba um vetor de números e retorne a média dos elementos.
//5- Dado um array de números, utilize o método map para retornar um novo array com cada número elevado a 2.
//6- Dado um array de palavras, utilize o método filter para retornar um novo array contendo apenas as palavras que começam com a letra 'A'.
//7- Dado um array de números, utilize o método forEach para imprimir no console cada número multiplicado por 3.
//8- Dado um array de números, utilize o método includes para verificar se o número 10 está presente no array.

