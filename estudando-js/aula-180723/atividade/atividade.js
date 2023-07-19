const alunos = [
    {
        nome: "João Silva",
        idade: 18,
        nota: 7.5
    },
    {
        nome: "Maria Santos",
        idade: 20,
        nota: 9.2
    },
    {
        nome: "Pedro Oliveira",
        idade: 19,
        nota: 6.8
    },
    {
        nome: "Ana Costa",
        idade: 21,
        nota: 8.0
    },
    {
        nome: "Carlos Souza",
        idade: 22,
        nota: 7.3
    },
    {
        nome: "Laura Mendes",
        idade: 19,
        nota: 8.7
    },
    {
        nome: "Mariana Almeida",
        idade: 20,
        nota: 9.1
    },
    {
        nome: "Rafael Santos",
        idade: 18,
        nota: 6.5
    },
    {
        nome: "Patrícia Ferreira",
        idade: 21,
        nota: 8.8
    },
    {
        nome: "Gustavo Lima",
        idade: 22,
        nota: 7.9
    },
    {
        nome: "Beatriz Guaita",
        idade: 22,
        nota: 10.0
    }
];


function inicializaTabela() {
    const tabela = document.querySelector("#tabela-alunos");
    for(let aluno of alunos) {
        tabela.innerHTML += `
            <tr>
                <td>${aluno.nome}</td>
                <td>${aluno.idade}</td>
                <td>${aluno.nota}</td>
            </tr>
        `;
    }
}

inicializaTabela();