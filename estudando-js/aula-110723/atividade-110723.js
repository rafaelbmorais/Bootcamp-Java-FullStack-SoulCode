// OBJETIVO:
// O objetivo geral deste conjunto de questões práticas em JavaScript é permitir a prática da aplicação dos operadores para resolver problemas comuns utilizando a linguagem JavaScript.

// EXERCíCIOS:
//1- Escreva um programa que receba um texto e calcule a quantidade de letra de "a". O programa deve considerar maisculas e minusculas.
// let texto = "A aula de JavaScript é muito interessante!";
// let cont = 0;
// for(let i = 0; i < texto.length; i++) {
//     if ((texto.charAt(i) == "a") || (texto.charAt(i) == "A")) {
//         cont += 1;
//     }
// }
// console.log("A quantidade da letra 'a' ou 'A' no texto é " + cont);


//2- Escreva um programa que calcule a raiz quadrada de um número e mostre na tela.
// let n = 64;
// console.log("A raiz quadrada de " + n + " é igual a " + Math.sqrt(n));


//3- Escreva um programa que  arredonde um número para o inteiro mais próximo.
// let num = 12.56789;
// console.log("O número aredondado é " + Math.round(num));


//4- Escreva um programa que  calcule o valor absoluto de um número.
// let num4 = -890;
// console.log(Math.abs(num4));


//5- Escreva um programa que  gere um número aleatório entre 10 e 20.
// let min, max;
// function getRandomInt(min, max) {
//     min = Math.ceil(min);
//     max = Math.floor(max);
//     return Math.floor(Math.random() * (max - min) + min);
//   }
// console.log(getRandomInt(10,20));


//6- Arredonde um número para um número específico de casas decimais.
// let num6 = 10.56789;
// console.log(num6.toFixed(2));


//7- Escreva um programa que  converta uma string para um número decimal e arredonde para o número inteiro anterior.
let num7 = "45.23694";
let numA = Math.floor(Number.parseInt(num7))
console.log(num7 + " arredondado é " + numA);


//8- Verifique se um número é um valor finito, infinito, NaN ou não.


//9- Escreva um programa que verifique se a string "ba" contém em outras outra string.
//10- Escreva um programa que  converte uma string para letras maiúsculas e para letras minúsculas e mostre na tela.
//11- Extraia uma parte específica de uma string com base em índices.
//12- Substitua todas as ocorrências de uma substring por outra em uma string.
//13- Remova espaços em branco extras no início e no final e no final de uma string.


// 14- Inverta uma string. Utilize o laço for.
let texto14 = "JavaScript";
let invertido = "";
for(let i = texto14.length - 1; i >= 0; i--) {
    invertido += texto14.charAt(i);
}
console.log(invertido);