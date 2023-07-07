

// desenha um  quadrado de # na tela
// let lado = 7;
// for(let i = 0; i < lado; i++) {
//     let linha = "";
//     for(let j = 0; j < lado; j++) {
//         linha += "# ";
//     }
//     console.log(linha);
// }

// desenha uma  rampa de # na tela
// let linha = 7;
// let coluna = "";
// for(i = 0; i < linha; i++) {
//     coluna += "#";
//     console.log(coluna);
// }


//continue
// nesse exemplo ignora todos os números ímpares
// for(let i = 1; i <= 20; i++) {
//     if(!(i % 2 == 0)) {
//         continue; // ignora o loop (pula o loop)
//     }
//     console.log(i);
// }

//break
//nesse exemplo abaixo, imprime o primeiro numero multiplo de 8.
// o break irá encerrar todo o processamento assim que é encontrado,
    // diferente do continue que interrompe somente um loop
for(let i = 1; i <= 100; i++) {
    if((i % 8 == 0) && (i != 8)) {
        console.log(i);
        break; 
    }
}


