// Tipagem ESTÁTICA -> Definição do tipo de cada variável, precisa declarar o tipo de conteúdo que vai receber (Java, C, C++, TypeScript);
// Tipagem DINÂMICA -> O tipo de conteúdo é definido de acordo com o seu valor, não precisa ser informado na declaração (JavaScript, Python);

// typeof -> operador que retorna o tipo da variavel;

let variavel;

variavel = 38;
console.log(typeof variavel); // number

variavel = "Rafael";
console.log(typeof variavel); // strong

variavel = true;
console.log(typeof variavel); // boolean

variavel = {nome: "Rafael", idade: 38}; // object
console.log(typeof variavel);

variavel = [1, 2, 3, 4, 5]; // object
console.log(typeof variavel);

variavel = function() {return 1}
console.log(typeof variavel); // function

variavel = undefined; // indefinido (undefined)
console.log(variavel);

variavel = null; 
console.log(variavel); // nulo (null)

variavel = NaN; // Not a Number
console.log(variavel);
