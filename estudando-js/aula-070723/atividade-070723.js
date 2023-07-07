// 1- Escreva um programa que imprima os números de 1 a 20 usando um loop for.
// let num = 20;
// for(let i = 1; i <= num; i++) {
//     console.log(i);
// }

//2- Escreva um programa que exiba os números de Fibonacci até o décimo termo. Os números de Fibonacci são formados pela sequência 0, 1, 1, 2, 3, 5, 8, 13, ... em que cada número é a soma dos dois anteriores. Use um loop while para gerar a sequência.
// let a = 0;
// let b = 1;
// let c = 0;
// let i = 0;
// while( i < 10) {
//     c = a + b;
//     console.log(a);
//     a = b;
//     b = c;
//     i++;
// }

//3- Crie um programa que receba um número e calcule a soma de todos os números ímpares até esse número. Use um loop for e uma estrutura condicional if para verificar se cada número é ímpar.
// let n = 20;
// let soma = 0;
// for(let i = 1; i <= n; i++) {
//     if(i % 2 != 0) {
//         soma = soma + i;
//     }
// }
// console.log(soma);

//4- Faça um programa que receba um número e exiba a tabuada da soma desse número usando um loop for.
// let num = 2;
// for(let i = 0; i <= 10; i++) {
//     console.log(2 + i);
// }

//5- Crie um programa que exiba todos os números múltiplos de 7 de 1 a 100 usando um loop for e uma estrutura condicional if para verificar se cada número é múltiplo de 7.
// let numero = 100;
// for(let i = 0; i <= numero; i++) {
//     if(i % 7 == 0) {
//         console.log(i);
//     }
// }

//6- Escreva um programa que receba um número e desenhe na tela um triângulo formado por "*".
// let linhas = 7;
// let colunas = "";
// for(let i = 0; i < linhas; i++) {
//     colunas += "* "; // concatena com o conteúdo que está em colunas
//     console.log(colunas);
// }

//7 - Desenhar um quadrado com @, mas seu interior deve ser oco.
let lado = 5;
let linha = "";
for(let y = 1; y <= lado; y++) {
    linha = "";
    for(let x = 1; x <= lado; x++) {
        if(y == 1 || y == lado || x == 1 || x == lado) {
            linha += "@ ";
        }
        else {
            linha += "  ";
        }
    }
    console.log(linha);
}
