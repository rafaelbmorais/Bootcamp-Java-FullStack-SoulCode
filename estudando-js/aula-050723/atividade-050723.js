// Atividade JavaScript - Aula 06/07/2023

// 1 - Escreva um programa que verifique se um número é positivo, negativo ou zero e exiba uma mensagem correspondente.
let num = 11;
if(num > 0) {
    console.log("O número " + num + " é positivo!");
}else if( num < 0) {
    console.log("O número " + num + " é negativo!");
}else {
    console.log("O número informado é zero!");
}


// 2 - Crie um programa que receba a idade de uma pessoa e verifique se ela é maior de idade (18 anos ou mais) ou menor de idade.
let idade = 30;
if(idade >= 18) {
    console.log("A pessoa é maior de idade. Ela tem " + idade + " anos.");
} else {
    console.log("A pessoa é menor de idade. Ela tem " + idade + " anos.");
}


// 3 - Escreva um programa que receba três números e determine qual deles é o maior.
let n1 = 101;
let n2 = 102;
let n3 = 101;
if(n1 > n2 && n1 > n3) {
    console.log(n1 + " é o maior dos três números.");
} else if(n2 > n1 && n2 > n3) {
    console.log(n2 + " é o maior dos três números.");
} else if(n3 > n1 && n3 > n2) {
    console.log(n3 + " é o maior dos três números.");
} else {
    console.log("O maior número não pode ser igual aos outros!");
}


// 4 - Crie um programa que receba dois números e verifique se seu produto é par ou ímpar.
let numero1 = 5;
let numero2 = 5;
let resultado = numero1 * numero2;
if(resultado % 2 == 0) {
    console.log(resultado + " é par!");
} else {
    console.log(resultado + " é ímpar!");
}


// 5 - Escreva um programa que receba o nome de um dia da semana e exiba se é um dia útil ou um fim de semana.
let dia = "domingo";
if(dia == "segunda" || dia == "terça" || dia == "quarta" || dia == "quinta" || dia == "sexta") {
    console.log(dia + " é um dia útil!");
} else if(dia == "sabado" || dia == "domingo") {
    console.log(dia + " é um dia do final de semana!");
} else {
    console.log(dia + " não é um dia da semana. Digite sem letras maiúsculas, sem acentos e sem a terminação 'feira'!");
}


// 6 - Faça um programa que receba um número de 1 a 7 e exiba o dia da semana correspondente (1 - domingo, 2 - segunda-feira, etc.).
let diaSemana = 1;
switch(diaSemana) {
    case 1:
        console.log("Domingo!");
        break;
    case 2:
        console.log("Segunda!");
        break;
    case 3:
        console.log("Terça!");
        break;
    case 4:
        console.log("Quarta!");
        break;
    case 5:
        console.log("Quinta!");
        break;
    case 6:
        console.log("Sexta!");
        break;
    case 7:
        console.log("Sábado!");
        break;
    default:
        console.log(diaSemana + " não é um dia da semana.");
}


// 7 - Crie um programa que solicite uma temperatura em Celsius e a converta para Fahrenheit, exibindo o resultado com duas casas decimais.
// (21 °C × 9/5) + 32 = 69,8 °F
let celsius = 21;
let fahrenheit = (celsius * (9/5) + 32);
console.log(celsius + "°C é " + fahrenheit.toFixed(2) + " em Fahrenheit");
