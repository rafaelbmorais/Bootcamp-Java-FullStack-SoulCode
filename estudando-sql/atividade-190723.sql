CREATE DATABASE minha_empresa;

USE minha_empresa;

CREATE TABLE departamento(
    idDepartamento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200)
);



CREATE TABLE colaborador(
    idColaborador INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR(150) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    dataNasc DATE NOT NULL,
    fkDepartamento INT NOT NULL,
    FOREIGN KEY (fkDepartamento) REFERENCES departamento(idDepartamento)
);

CREATE TABLE endereco(
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(30) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(25) NOT NULL,
    complemento VARCHAR(50) DEFAULT("Sem complemento"),
    fkColaborador INT UNIQUE NOT NULL,
    FOREIGN KEY (fkColaborador) REFERENCES colaborador(idColaborador)
);

CREATE TABLE dependente(
    idDependente INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    dataNasc DATE NOT NUll,
    fkColaborador INTEGER NOT NULL,
    FOREIGN KEY(fkColaborador) REFERENCES colaborador(idColaborador)
);

CREATE TABLE projeto(
    idProjeto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    prazo DATE NOT NULL,
    orcamento DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(140) NOT NULL
);

CREATE TABLE rel_colaborador_projeto(
    idRelacionamento INTEGER PRIMARY KEY AUTO_INCREMENT,
    dataEntrada DATE DEFAULT(CURRENT_DATE()),
    fkColaborador INTEGER NOT NULL,
    fkProjeto INTEGER NOT NULL,
    FOREIGN KEY(fkColaborador) REFERENCES colaborador(idColaborador),
    FOREIGN KEY(fkProjeto) REFERENCES projeto(idProjeto)
);

-- Populate
INSERT INTO departamento (nome, descricao) VALUES
    ('RH', 'Departamento de Recursos Humanos'),
    ('TI', 'Departamento de Tecnologia da Informação'),
    ('Vendas', 'Departamento de Vendas');

INSERT INTO colaborador (nomeCompleto, email, salario, dataNasc, fkDepartamento) VALUES
    ('João Silva', 'joao.silva@example.com', 5000.00, '1990-05-10', 1),
    ('Maria Souza', 'maria.souza@example.com', 6000.00, '1988-12-15', 1),
    ('Pedro Santos', 'pedro.santos@example.com', 5500.00, '1992-09-25', 2),
    ('Ana Oliveira', 'ana.oliveira@example.com', 5200.00, '1995-03-18', 3),
    ('Carlos Rocha', 'carlos.rocha@example.com', 4800.00, '1991-07-20', 2),
    ('Larissa Mendes', 'larissa.mendes@example.com', 4200.00, '1993-02-05', 3),
    ('Rafael Costa', 'rafael.costa@example.com', 5300.00, '1989-11-12', 1),
    ('Juliana Almeida', 'juliana.almeida@example.com', 4600.00, '1994-09-30', 3);

INSERT INTO endereco (cidade, uf, rua, numero, complemento, fkColaborador) VALUES
    ('São Paulo', 'SP', 'Av. Paulista', '1000', 'Apto 501', 1),
    ('Rio de Janeiro', 'RJ', 'Rua Copacabana', '500', '', 2),
    ('Porto Alegre', 'RS', 'Av. Ipiranga', '200', 'Sala 302', 3),
    ('Belo Horizonte', 'MG', 'Rua da Liberdade', '150', 'Casa 10', 4),
    ('São Paulo', 'SP', 'Rua Augusta', '300', 'Apto 1002', 5),
    ('Porto Alegre', 'RS', 'Av. Bento Gonçalves', '800', '', 6),
    ('Rio de Janeiro', 'RJ', 'Rua Ipanema', '700', 'Sala 101', 7),
    ('Belo Horizonte', 'MG', 'Av. Amazonas', '250', 'Casa 20', 8);

INSERT INTO dependente (nome, dataNasc, fkColaborador) VALUES
    ('Carlos Silva', '2010-03-12', 1),
    ('Camila Souza', '2012-08-25', 2),
    ('Paula Santos', '2015-11-05', 3),
    ('Pedro Rocha', '2013-09-18', 5),
    ('Isabella Mendes', '2017-04-03', 6),
    ('Gustavo Costa', '2019-11-25', 7),
    ('Sophia Almeida', '2021-03-08', 8);

INSERT INTO projeto (nome, prazo, orcamento, descricao) VALUES
    ('Projeto A', '2023-09-30', 100000.00, 'Desenvolvimento de um novo software'),
    ('Projeto B', '2023-08-15', 80000.00, 'Implementação de um sistema de gestão'),
    ('Projeto C', '2023-10-31', 120000.00, 'Construção de um aplicativo móvel'),
    ('Projeto D', '2023-12-31', 90000.00, 'Implementação de um sistema de segurança'),
    ('Projeto E', '2023-11-15', 70000.00, 'Desenvolvimento de um aplicativo web'),
    ('Projeto F', '2023-12-31', 110000.00, 'Melhoria da infraestrutura de rede');

INSERT INTO rel_colaborador_projeto (dataEntrada, fkColaborador, fkProjeto) VALUES
    ('2023-06-01', 1, 1),
    ('2023-06-01', 2, 1),
    ('2023-07-01', 3, 2),
    ('2023-07-01', 4, 3),
    ('2023-06-01', 5, 2),
    ('2023-06-01', 6, 2),
    ('2023-07-01', 7, 3),
    ('2023-07-01', 8, 1);
    
SELECT * FROM departamento;
SELECT * FROM colaborador;
SELECT * FROM dependente;
SELECT * FROM projeto;
SELECT * FROM rel_colaborador_projeto;



-- Por: Denise Souza, Nicoli Rodrigues, Lucas Takamoto, Gustavo Henrique e Rafael Batista

-- Q1: Liste os nomes dos dependentes dos colaboradores que trabalham no departamento RH. 
SELECT dd.nome AS nomeDependente
	FROM dependente AS dd
    JOIN colaborador AS colab
	ON dd.fkColaborador = colab.idColaborador
    JOIN departamento AS dp
    ON colab.fkDepartamento = dp.idDepartamento
WHERE dp.nome = "RH";

-- Q2: Liste os nomes dos colaboradores do estado do Rio de Janeiro. 
SELECT nomeCompleto, uf
	FROM colaborador
    JOIN endereco
    ON fkColaborador = idColaborador
WHERE uf = "RJ";

-- Q3: Mostre a média do orçamento dos projetos. 
SELECT AVG(orcamento) AS mediaOrcamento
	FROM projeto;

-- Q4: Mostre o maior orçamento e o menor orçamento. 
SELECT MIN(orcamento) AS menorOrcamento, MAX(orcamento) AS maiorOrcamento
	FROM projeto;

-- Q5: Mostre a soma total do orçamento de todos os projetos. 
SELECT SUM(orcamento) AS somaTotal
	FROM projeto;

-- Q6: Liste os dependentes que nasceram antes de 2015.
SELECT *
	FROM dependente
WHERE YEAR(dataNasc) < 2015;

-- Q7: Liste os dependentes que fazem aniversário no mês atual. 
SELECT *
	FROM dependente
WHERE MONTH(dataNasc) = MONTH(NOW());
-- pode ser usada a função CURDATE(), exemplo, WHERE MONTH(dataNasc) = MONTH(CURDATE());

-- Q8: Liste os nomes dos dependentes do colaborador de ID = 1. 
SELECT d.nome AS nomeDependente
	FROM dependente AS d
    JOIN colaborador AS c
    ON d.fkColaborador = c.idColaborador
WHERE c.idColaborador = 1;
-- a Q8 também pode ser feita assim
SELECT nome
FROM dependente
WHERE fkColaborador = 1;


-- Q9: Mostre quantas pessoas estão alocadas em cada projeto da empresa. 
SELECT COUNT(*), nome
	FROM rel_colaborador_projeto
    JOIN projeto
    ON idProjeto = fkProjeto
    GROUP BY fkProjeto;
    
-- Q10: Mostre os 2 projetos com prazo mais próximo.
SELECT *
	FROM projeto
    ORDER BY ABS(DATEDIFF(prazo, CURRENT_DATE()))
    LIMIT 2;
       
-- Q11: Liste os dependentes com responsável que mora em SP. 
SELECT d.nome AS nomeDependente, c.nomeCompleto AS nomeColaborador, e.uf AS estado
	FROM dependente AS d
    JOIN colaborador AS c
    ON c.idColaborador = d.fkColaborador
    JOIN endereco AS e
    ON e.fkColaborador = c.idColaborador
WHERE uf = "SP";

-- Q12: Liste os colaboradores que ganham acima de 5000 e estão em um dos projetos a seguir (A, B ou C). 
SELECT c.nomeCompleto AS nomeColaborador, p.nome AS nomeProjeto, c.salario
	FROM colaborador AS c
    JOIN rel_colaborador_projeto AS rel
    ON c.idColaborador = rel.fkColaborador
    JOIN projeto AS p
    ON p.idProjeto = rel.fkProjeto
WHERE salario > 5000 AND p.nome IN ("Projeto A", "Projeto B", "Projeto C");

-- Q13: Indique a média salarial dos colaboradores.
SELECT AVG(salario) AS mediaSalarial
	FROM colaborador;

-- Q14: Aumente o salario em 10% de quem nasceu antes de 1990. 
UPDATE colaborador 
	SET salario = salario * 1.1
WHERE YEAR(dataNasc) < 1990; 

SELECT * FROM colaborador;

-- Q15: Liste quantos colaboradores existem em cada estado na tabela.
SELECT COUNT(*) AS total, uf
	FROM colaborador
    JOIN endereco
    ON fkColaborador = idColaborador
    GROUP BY uf;

-- outra forma de fazer a Q15:
SELECT uf, COUNT(*) AS total
FROM endereco
GROUP BY uf;
