/*
    Operadores Aritméticos:
    + Adição
    - Subtração
    * Multiplicação
    / Divisão
    ** Exponenciação
    % módulo / resto
*/

let result;

result = 4 + 5; // 9
console.log(result);

result = 9 * 3; // 27
console.log(result);

result = ((3 + 7) * 12) / 6; // 20
console.log(result);


// Operadores de Atribuição

result += 30; // é a mesma coisa que result = result + 30;
console.log(result); // 50

result -= 45;
console.log(result); // 5

result *= 7;
console.log(result); // 35

result %= 9;
console.log(result); // 8

result /= 2; 
console.log(result); // 4

result **= 2; 
console.log(result); //16


// Operadores de Incremento e Decremento
/*
    a++ pós incremento
    ++a pré incremento
    a-- pós decremento
    --a pré decremento
 */

let a = 0;
console.log(a); // 0

console.log(a++); // 0 -> o valor será incrementado após a execução, então o valor de saída será 0, mas será armazenado 1 após a execução.

console.log(++a); // 2 -> o valor será 2 porque primeiro é incrementado 1 ao a, e só depois será exibido o valor.

console.log(a--); // 2

console.log(--a); // 0


// Operadores Relacionais (retorna true ou false (booleano))
/*
    <   Menor que
    >   Maior que
    <=  Menor ou igual
    >=  Maior ou igual
    ==  Igual a
    === Igual a e mesmo tipo
    !=  Diferente
*/

const n1 = 9;
const n2 = 11;
const n3 = 9;
const n4 = 13;
const n5 = "11";

result = n1 < n2;
console.log(result); // true

result = n1 > n2;
console.log(result); // false

result = n1 <= n2;
console.log(result); // true

result = n1 < n3;
console.log(result); // false

result = n1 <= n3;
console.log(result); // true

result = n1 >= n3;
console.log(result); // true

result = n1 > n3;
console.log(result); // false

result = n3 == n4;
console.log(result); // false

result = n1 == n3;
console.log(result); // true

result = n1 != n3;
console.log(result); // false

result = n1 != n2;
console.log(result); // true

result = n2 == n5;
console.log(result); // true

result = n2 === n5;
console.log(result); // false

result = "Gabriel" == "Gabriel";
console.log(result); // true

result = "Gabriel Braga" == "Gabriel";
console.log(result); // false


// Operadores Lógicos
/*
    && -> E
    || -> OU
    !  -> NÃO
 */

console.log(true && true); // true
console.log(true && false); // false
console.log(true && true && true && true && false); // false

console.log(true || true); // true
console.log(true || false); // true
console.log(false || true || true || true || true || false); // true
console.log(false || false); // false

console.log(!true); // false
console.log(!false); // true

console.log(!true || false); // false

console.log(true || true && true); // true
console.log((true || true) && true); // false

// Operador Ternário
// condição ? caso for verdadeiro : caso for falso;
let mensagem;
let nota = 3;
mensagem = (nota >= 7) ? "Aprovado" : "Reprovado"; // condição
console.log(mensagem);


