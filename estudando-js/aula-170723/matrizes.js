const vetor1 = [1, 3, 5, 7, 9]; // vetor unidimensional.
const vetor2 = [2, 4, 6, 8, 0];
const vetor3 = [1, 2, 3, 4, 5];
const vetor4 = [6, 7, 8, 9, 0];

const matriz = [vetor1, vetor2, vetor3, vetor4]; // vetor bidimensional.
// Vetor bidimensional possui altura e largura.

// console.log(vetor1[0]);
// console.log(matriz[0][0]);

// // matriz tridimensional
// const matriz3d = [
//     [
//         [1, 2],
//         [3, 4]
//     ],
//     [
//         [5, 6],
//         [7, 8]
//     ]
// ];

// console.log(matriz3d[1][0][0]); // acessa o elemento 5. 
// console.log(matriz3d[1][1][1]); // acessa o elemento 8.

const matriz3x3 = [
    [1, 8, 4],
    [6, 5, 9],
    [2, 3, 7]
];

for(let x = 0; x < matriz3x3.length; x++) {
    for(let y = 0; y < matriz3x3[x].length; y++) {
        console.log(matriz3x3[x][y]);
    }
}