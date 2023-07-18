class Pessoa {
    nome;
    idade;
    email;
}

let pessoa1 = new Pessoa();
pessoa1.nome = "Gabriel";
pessoa1.idade = 21;
pessoa1.email = "gabriel@exemplo.com";
// pessoa1.cor = "Branco"; // é válido em JavaScript, mas é melhor não usar desa forma pq não consta na classe original.
console.log(pessoa1);


// outro jeito de se criar um objeto em javascript, usada geralmente quando irá chamar uma única vez no programa
const pessoa2 = {
    nome: 'Aline',
    idade: 24,
    email: "aline@example.com",
    foto: "https://bancodefotoos.com/75436463546",
    enabled: true
};

console.log(pessoa2);

// const vetor = ["Gabriel", 21, "gabriel@mail.com"];
// console.log(vetor[0]);
// const objeto = { nome: "Gabriel", idade: 21, email: "gabriel@mail.com" };
// console.log(objeto["nome"]); // totalmente válido. acessa a propriedade "nome" do objeto

const pc = {
    ram: 16,
    disco: 1,
    processador: "i9 intel",
    fonte: "100w",
    placaMae: "Gigabyte"
};
const saldo = 4500;
if(saldo > 4000) {
    pc.placaVideo = "RXT 3080";
}
// console.log(pc);


let n1 = 2;
let n2 = n1; // faz uma copia de n1 e passa para n2
n1 = 3; // não afeta o n2
console.log(n1); // 3
console.log(n2); // 2

// Forma incorreta de copiar um objeto
// let objeto1 = { nome: "Bruna", curso: "JavaScript" };
// let objeto2 = objeto1; // não é feito uma copia do objeto, e sim da referencia dele na memoria
// objeto1.nome = "Bruna Muller";
// console.log(objeto1);
// console.log(objeto2);

// Forma correta de copiar um objeto -> Operador spread "..."
let objeto1 = { nome: "Bruna", curso: "JavaScript" };
let objeto2 = {...objeto1}; // copiar os elementos do objeto1 e "esplhar" no objeto2
objeto1.nome = "Bruna Muller";
console.log(objeto1);
console.log(objeto2);

delete objeto1.nome; // remove a propriedade "nome" do objeto
console.log(objeto1);