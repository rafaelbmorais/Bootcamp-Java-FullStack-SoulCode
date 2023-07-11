// Função

/* 
    Se a função tem parametros precisamos passar os argumentos corretamente, 
    caso a função tenha um parametro inicializado (n2 = 10) não é obrigatório o argumento
 */
function somar1(n1, n2 = 10) { /* Essa função recebe argumentos, mas não retorna valores */
    console.log("Numero 1 é " + n1);
    console.log("Numero 2 é " + n2);
    console.log("A soma dos números é " + (n1 + n2));
}

somar1(20);

// =======

function somar2(n1, n2 = 10) { /* Essa função recebe argumentos e retorna valores */
    let soma = n1 + n2;
    return soma;
}

let result = somar2(31, 38); /* chama a função passando argumentos */
console.log("A soma retornada da função é " + result);

// =======

function calc(n1, n2, op) {
    switch(op) {
        case "+":
            return n1 + n2;
        case "-":
            return n1 - n2;
        case "*":
            return n1 * n2;
        case "/":
            return n1 / n2;
    }
    return NaN;
}

console.log(calc(1, 2, "*"));


// ========

// Desenha um triangulo conforme a altura informada.
function desenhaTriangulo(altura) {
    for(let i = 1; i <= altura; i++) {
        let linha = "";
        for(let j = 0; j < (altura - i); j++ ) {
            linha += " ";
        }
        for(let j = 0; j < i; j++) {
            linha += "* ";
        }
        console.log(linha);
    }
}

desenhaTriangulo(10);