//1 - Escreva um programa que verifique se um número é par ou ímpar.
//2 - Faça um programa que calcule a média aritmética de três números.
//3 - Escreva um programa que determine se um número é divisível por 3 e por 5 ao mesmo tempo.
//4 - Faça um programa que calcule a área de um triângulo com base e altura.
//5 - Escreva um programa que converta uma temperatura de graus Celsius para Fahrenheit.
//6 - Faça um programa que calcule o delta das funções de segundo grau.
//7 - Faça um programa que retorna se uma determinada pessoa pode dirigir, baseado na sua idade (utilize operador ternário).


//1
let n = 18;
let mensagem;
let condicao = (n % 2) == 0;
mensagem = condicao ? "É Par!" : "É Ímpar!";
console.log(mensagem);


//2
let n1 = 9;
let n2 = 6;
let n3 = 10;
condicao = (n1 + n2 + n3) / 3;
console.log(condicao); // o metodo tofixed() reduz o número de casas decimais.

//3
let num1 = 15;
let div1 = (num1 % 3) == 0;
let div2 = (num1 % 5) == 0;
resultado = (div1 && div2)
console.log(resultado);

//4
let base = 4;
let altura = 2;
resultado = (base * altura) / 2;
console.log(resultado);

//5
//(12 °C × 9/5) + 32 = 53,6 °F
let celsius = 12;
let fahrenheit = (celsius * (9 / 5)) + 32;
console.log(fahrenheit);

//6
//Δ = b**2 – 4*a*c
let a = 2;
let b = 8;
let c = -24;
let delta = (b**2) - (4 * a * c);
console.log(delta);


//7
let idade = 38;
condicao = idade >= 18;
mensagem = condicao ? "Pode dirigir!" : "Não pode dirigir!";
console.log(mensagem);


