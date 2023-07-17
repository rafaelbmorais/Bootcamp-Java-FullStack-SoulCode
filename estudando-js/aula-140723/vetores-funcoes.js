const nums = [6, 9, 0, 3, 8, 1, 4, 2, 5, 7, 7];
console.log(nums);

nums.push(4); // adiciona um elemento ao final do vetor
console.log(nums);

nums.unshift(9); // adiciona um elemento no início do vetor
console.log(nums);

nums.pop(4); // remove um elemento do final do vetor
console.log(nums);

nums.shift(9); // remove um elemento do início do vetor
console.log(nums);

let juncao = nums.join(", "); // join faz a junção dos elementos do vetor, nesse exemplo, junta os numeros numa string e inclui a virgula com espaço.
console.log(juncao);

let vetor2 = [5, 6, 7];
let vetor3 = nums.concat(vetor2); // gera um novo vetor concatenando o vetor nums com o vetor2
console.log(vetor3);

console.log(nums.sort()); // ordena o vetor na ordem alfabetica (modifica o vetor).

console.log(nums.reverse()); // gera um novo vetor com elementos do vetor na ordem reversa (modifica o vetor).

console.log(nums.includes(4)); // retorna um boolean

// console.log(nums.fill(9, 5)); // preenche o vetor com um elemento a partir da posição informada, no exemplo, preenche com 9 a partir da quinta posição.

// console.log(nums.fill(0)); // preenche todos os elementos com zero (modifica o vetor).

// console.log(nums.fill(7, 2, 4)); // preenche com 7 de 2 a 4 - 1 (modifica o vetor)

console.log(nums.indexOf(7)); // retorna o indice do primeiro elemento informado que encontrar no vetor

// console.log(nums);
// console.log(nums.splice(6, 3)); // remove elementos do vetor (modifica o vetor)
// console.log(nums);

console.log(nums.slice(2, 5)); // recorta um vetor do indice 2 a 5(exclusivo) (não modifica o vetor).

nums.forEach(nums => console.log(nums)); // itera sobre os elementos do vetor

console.log("---------");
console.log(nums.reduce((acumulador, num) => (acumulador - num), 0)); // reduce -> efetuar a redução dos valores do vetor em um valor acumulativo.
// lê e subtrai dos elementos do vetor, um a um. O acumulador começa em zero (zero informado apos a arow function).


console.log(nums.map(num => num * 2)); // multiplica todos os valores por 2 e gera um novo vetor

// arrow funtion -----> parametro => operação e retorno

console.log(nums.find(num => (num > 8))); // retorna o primeiro valor que corresponde a condição especificada.

console.log("-- Filter ");
console.log(nums.filter(num => (num % 2 == 0))); // retorna um vetor com elementos que corresponde a condição.



// console.log(names.find(nome => nome.includes("Rocha"))); 
// console.log(names.filter(nome => nome.includes("Sousa")));

// usando a crase `` para delimitar uma string posso ter quebra de linha e não causará erro.

// string como vetor
let nome = 'Carolina';
let idade = 31;
let mensagem = `Nome: ${nome} - Idade: ${idade}`; // interporlação
console.log(mensagem);

console.log(nome[2]); // é válido, retorna "o"

// o \n é usado para quebra de linha em JS.

console.log("O \"Palmeiras\" perdeu ontem!");

