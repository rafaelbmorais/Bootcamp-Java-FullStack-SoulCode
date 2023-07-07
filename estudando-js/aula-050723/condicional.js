// Estruturas Condicionais
// Condição -> calculo lógico

// const altura = 1.59;
// if(altura >= 1.60)
//     console.log("Entrou no brinquedo!");
// else
//     console.log("Não entrou no brinquedo!");


// let nivelIngles = 3; // 1, 2, 3, 4, 5, 6....
// if(nivelIngles == 1)
//     console.log("Nivel Iniciante");
// else if(nivelIngles == 2)
//     console.log("Nivel Básico");
// else if(nivelIngles == 3)
//     console.log("Nível Intermediário");
// else if(nivelIngles == 4)
//     console.log("Nível Avançado");
// else if(nivelIngles == 5)
//     console.log("Nível Fluente");
// else
//     console.log("Nível desconhecido");


// var saldo = 700;
// if(saldo >= 700)
//     console.log("comprar um tênis");
// else if(saldo >= 500)
//     console.log("Comprar uma calça jeans");
// else if(saldo >= 200)
//     console.log("Comprar uma camiseta");
// else if(saldo >= 100)
//     console.log("Comprar um livro");
// else
//     console.log("Saldo insuficiente");



// // Escopo == Bloco de Código {}
// let conseguiuFazerCompra;
// let saldo = 300;
// if(saldo > 200) {
//     console.log("Fez a compra do tênis!");
//     conseguiuFazerCompra = true;
// }
// else {
//     console.log("Sem grana suficiente!");
//     conseguiuFazerCompra = false;
// }

// if(conseguiuFazerCompra) {
//     console.log("Com a compra o seu saldo diminuiu.");
// }

let num1 = 120, num2 = 130,  num3 = 110;
if(num1 != num2 && num1 != num3 && num2 != num3) {
    if(num1 > num2 && num1 > num3) {
        if(num2 > num3){
        console.log(num1 + " > " + num2 + " > " + num3); // num1 > num2 > num3
        }
        else {
            console.log(num1 + " > " + num3 + " > " + num2); // num1 > num3 > num2
        }
    }
    else if(num2 > num1 && num2 > num3) {
        if(num1 > num3) {
            console.log(num2 + " > " + num1 + " > " + num3); // num2 > num1 > num3
        }
        else {
            console.log(num2 + " > " + num3 + " > " + num1); // num2 > num3 > num1
        }
    }
    else if(num3 > num1 && num3 > num2) {
        if(num1 > num2) {
            console.log(num3 + " > " + num1 + " > " + num2); // num3 > num1 > num2
        }
        else {
            console.log(num3 + " > " + num2 + " > " + num1) ; // num3 > num2 > num1
        }
    }
}
else {
    console.log("Os números precisam ser diferentes.");
}


// Switch case

// Mesmo exemplo utilizando o if else e switch case.
let mes = 4;
if(mes == 1) {
    console.log("Janeiro");
}else if(mes == 2) {
    console.log("Fevereiro");
}else if(mes == 3) {
    console.log("Março");
}else if(mes == 4) {
    console.log("Abril");
}else if(mes == 5) {
    console.log("Maio");
}else if(mes == 6) {
    console.log("Junho");
}else if(mes == 7) {
    console.log("Julho");
}else if(mes == 8) {
    console.log("Agosto");
}else if(mes == 9) {
    console.log("Setembro");
}else if(mes == 10) {
    console.log("Outubro");
}else if(mes == 11) {
    console.log("Novembro");
}else if(mes == 12) {
    console.log("Dezembro");
} else {
    console.log("Esse mês não existe!")
}


// o switch mesmo encontrando o resultado esperado continua executando caso por caso até terminar, 
//     por isso é importante colocar o break para sair do switch assim que encontrar o resultado esperado.
switch(mes) {
    case 1:
        console.log("Janeiro");
        break;      // para o fluxo do switch
    case 2:
        console.log("Fevereiro");
        break;
    case 3:
        console.log("Março");
        break;
    case 4:
        console.log("Abril");
        break;
    case 5:
        console.log("Maio");
        break;
    case 6:
        console.log("Junho");
        break;
    case 7:
        console.log("Julho");
        break;
    case 8:
        console.log("Agosto");
        break;
    case 9:
        console.log("Setembro");
        break;
    case 10:
        console.log("Outubro");
        break;
    case 11:
        console.log("Novembro");
        break;
    case 12:
        console.log("Dezembro");
        break;
    default:
        console.log("Esse mês não existe!");
}