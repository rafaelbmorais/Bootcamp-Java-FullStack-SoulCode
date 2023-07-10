// Função (Function) -> Rotina

// MODELO DE UMA FUNÇÃO:
// function nomeDaFuncao() {
//     linhas-de-comando;
// }

// let num1 = 4;
// let num2 = 5;
// function multiplicar() {
//     console.log("O primeiro número é " + num1);
//     console.log("O segundo número é " + num2);
//     console.log("O produto é " + (num1 * num2));
// }

// multiplicar();


// Função ou Function -> Rotina

// Funções de Numéricas (Number -> Biblioteca)
let result = Number.isNaN(NaN); // true / false
console.log(result);

result = Number.isFinite(Infinity); // true / false
console.log(result);

result = Number.parseInt(12.4); // conversão do float para int
console.log(result);

result = Number.parseFloat(12); // conversão do int para float
console.log(result);

result = Number.isInteger(13.4); // inteiro (true / false)
console.log(result);

let numero = 22.548;
console.log(numero.toFixed(2));
console.log(numero.toFixed(1));

console.log(numero.toPrecision(4));

console.log(numero.toString());

numero = numero.toString();
console.log(numero);

// Funções de Texto

const texto = "Java Script";

console.log(texto.charAt(9)); // imprime o caractere da posição 9

console.log(texto.concat(" é muito bacana.")); // concatena JavaScript com texto

console.log(texto.charAt(texto.length-1)); // imprime o ultimo caractere

console.log(texto.trim()); // remove espaços do fim e do inicio do texto

console.log(texto.replaceAll(" ", ""));

console.log(numero.replace(".", ","));

console.log(texto.includes("Java")); // considera maiuscula e minuscula

console.log(texto.toLowerCase());
console.log(texto.toUpperCase());

let busca = "JaVa";
console.log(texto.toLowerCase().includes(busca.toLowerCase())); // não considera maiuscula e minuscula

console.log(texto.replace("J", "A").replace("S", "T").replace("H", "A")); // funciona perfeitamente

console.log(texto.indexOf("Script"));

console.log(texto.substring(0, 4));

// Math -> Biblioteca Matemática
console.log(Math.ceil(2.3789)); // arredonda para cima
console.log(Math.floor(2.3789)); // arredonda para baixo
console.log(Math.round(2.7389)); // arredonda para o mais proximo
console.log(Math.sqrt(625));
console.log(Math.abs(-8));
console.log(Math.floor(Math.random() * 100 + 1)); // [1, 100]