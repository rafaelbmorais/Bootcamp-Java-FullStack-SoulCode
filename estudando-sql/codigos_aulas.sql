-- AULA 11/07
-- COMANDO BÁSICOS
-- REGRA SQL 1: LETRAS MAIÚSCULAS NOS COMANDOS
-- REGRA SQL 2: LETRAS MINÚSCULAS EM OUTROS VALORES

-- NORMALIZAÇÃO
	-- 1FN:
		-- Atributos devem ser indivisiveis;
		-- Toda tabela necessita de uma chave primária.
		
	-- 2FN:
		-- Os campos de uma tabela devem depender de sua chave primária;
		-- Reduzir redundância.
		
	-- 3FN:
		-- Remover campos que podem ser obtidos via outros campos. 
-- ---------------

SHOW DATABASES; -- listar os bancos disponíveis

CREATE DATABASE empresa_db; -- cia um banco de dados com o nome especificado

USE empresa_db; -- seleciona o banco para rodar os comandos

SHOW TABLES; -- mostra as tabelas do banco de dados

DESCRIBE colaborador; -- mostra a estrutura da tabela, no caso a colaborador

-- DROP DATABASE empresa_db; -- apaga TUDO (tabelas, dados, etc)

-- DROP TABLE projeto; -- apaga a tabela e o seu conteúdo

-- TIPOS DE DADOS:
	-- INT/INTEGER = 2 bilhões
	-- BIGINT = até 9 quintilhões
    -- DECIMAL = valores decimais exatos
    -- FLOAT = até 7 casas de precisão
    -- DOUBLE = até 15 casas de precisão
	-- TEXT = textos muito longos
    -- DATE = formato YYYY-MM-DD
    -- TIME = formato hh:mm:ss
    -- DATETIME = formato YYYY-MM-DD hh:mm:ss
    -- BLOB = arquivos (binary large object)
    
-- Tabela Departamento
CREATE TABLE departamento(
	-- <nome da coluna> <tipo da coluna> <constraints>
    idDepartamento INTEGER PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY = chave primária, AUTO_INCREMENT = 
	nome VARCHAR(150) NOT NULL, -- NOT NULL torna a coluna obrigatória
    descricao VARCHAR(200) 
);

-- ------------------------------------------------------------------------------
-- Aula 12/07
-- CONSTRAINTS; CHAVE ESTRANGEIRA; INSERT; UPDATE; DELETE;
    
-- Tabela Colaborador
CREATE TABLE colaborador(
	idColaborador INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(200) NOT NULL,
	cpf VARCHAR(11) UNIQUE NOT NULL,
	salario DECIMAL(8, 2) NOT NULL, -- DECIMAL(8,2) -> 0 8 significa que o salario terá 8 digitos, sendo 2 desses 8 como casa decimal (ele arredonda) 
	telefone VARCHAR(20) NOT NULL,
	dataNascimento DATE NOT NULL,
	fkDepartamento INTEGER NOT NULL, 
	FOREIGN KEY(fkDepartamento) -- coluna que será a chave estrangeira
	REFERENCES departamento(idDepartamento) -- chave primária da outra tabela
);

-- Tabela Endereço
CREATE TABLE endereco(
	idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(30) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    rua VARCHAR(60) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    -- Usa "Sem complemento" caso não definirmos um valor específico
    complemento VARCHAR(40) DEFAULT("Sem complemento"),
    fkColaborador INTEGER UNIQUE NOT NULL,
    FOREIGN KEY(fkColaborador)
    REFERENCES colaborador(idColaborador)
);

-- Tabela Dependente
CREATE TABLE dependente(
	idDependente INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    dataNascimento DATE NOT NULL,
    fkColaborador INTEGER NOT NULL,
    FOREIGN KEY(fkColaborador)
    REFERENCES colaborador(idColaborador)
);

-- Tabela Projeto
-- Não pode ter chave estrangeira, pois é uma relação N:N. Para o relacionamento com colaborador, temos que criar uma tabela de relacionamento.
CREATE TABLE projeto(
	idProjeto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    prazo DATE NOT NULL,
    orcamento DECIMAL(8, 2) NOT NULL
);

-- Tabela Relacionamento Colaborador-Projeto
CREATE TABLE colaborador_projeto(
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    fkColaborador INTEGER NOT NULL,
	fkProjeto INTEGER NOT NULL,
    FOREIGN KEY (fkColaborador) REFERENCES colaborador(idColaborador),
    FOREIGN KEY (fkProjeto) REFERENCES projeto(idProjeto)
);
  
-- Listar dados de uma tabela
SELECT * FROM projeto;

-- INSERINDO DADOS
-- OBS: uma forma de inserir dados é colocando os nomes das colunas após o nome da tabela (deverão ser colocadas entre um parenteses e separados por vírgula).
-- Lembrando que dessa forma é obrigatório preencher todas as colunas informadas.
-- INSERT INTO departamento (nome, complemento)...

-- Departamento
INSERT INTO departamento
VALUES (NULL, "RH", "Recursos Humanos");
INSERT INTO departamento
VALUES (NULL, "TI", "Tecnologia da Informação");
INSERT INTO departamento
VALUES (NULL, "Comercial", "Vendas e Marketing");
INSERT INTO departamento
VALUES (NULL, "Marketing", "Vendas e Marketing");
INSERT INTO departamento
VALUES (NULL, "Financeiro", "Financeiro");

-- Colaborador
INSERT INTO colaborador 
VALUES(NULL, "Jorge Valdivia", "11111111111", 4500.0, "+5511123456789", "1914-02-15", 1);
INSERT INTO colaborador 
VALUES(NULL, "Bill Gates", "11111111112", 4800.0, "+5511123456780", "1915-04-05", 2);
INSERT INTO colaborador 
VALUES(NULL, "William Bonner", "11111111113", 5500.0, "+5511123456781", "1920-12-02", 3);
INSERT INTO colaborador 
VALUES(NULL, "Silvio Santos", "11111111114", 4000.0, "+5511123456782", "1900-06-27", 4);
INSERT INTO colaborador 
VALUES(NULL, "Fausto Silva", "11111111115", 4200.0, "+5511123456783", "1910-09-17", 5);
INSERT INTO colaborador 
VALUES(NULL, "Galvão Bueno", "11111111116", 5500.0, "+5511123456784", "1911-01-09", 3);
INSERT INTO colaborador 
VALUES(NULL, "Luciano Huck", "11111111117", 4000.0, "+5511123456785", "1920-06-21", 4);
INSERT INTO colaborador 
VALUES(NULL, "Angelica Huck", "11111111118", 5500.0, "+5511123456786", "1921-11-11", 2);
INSERT INTO colaborador 
VALUES(NULL, "Fatima Bernardes", "11111111119", 4500.0, "+5511123456787", "1925-05-05", 1);
INSERT INTO colaborador 
VALUES(NULL, "Leila Pereira", "11111111120", 4200.0, "+5511123456788", "1913-07-12", 5);


-- Endereço
INSERT INTO endereco 
VALUES(NULL, "Guarulhos", "SP", "Rua do Chute no Vacuo", "100", NULL, 1);
INSERT INTO endereco 
VALUES(NULL, "Americana", "SP", "Rua das Janelas", "11", "rua sem saida", 2);
INSERT INTO endereco 
VALUES(NULL, "Rio de Janeiro", "RJ", "Rua Boa Noite", "20", NULL, 3);
INSERT INTO endereco 
VALUES(NULL, "Sao Paulo", "SP", "Av Quem Quer Dinheiro", "4", "Mansao do Milhao", 4);
INSERT INTO endereco 
VALUES(NULL, "Rio de Janeiro", "RJ", "Rua Oloko Meu", "13", "Pizzaria do Faustao", 5);
INSERT INTO endereco 
VALUES(NULL, "Fortaleza", "CE", "Av Gol do Brrrrasilll", "10", NULL, 6);
INSERT INTO endereco 
VALUES(NULL, "Maceio", "AL", "Av Vou de Taxi", "99", "Paralela com Rua Lata Velha", 7);
INSERT INTO endereco 
VALUES(NULL, "Maceio", "AL", "Av Vou de Taxi", "99", "Paralela com Rua Lata Velha", 8);
INSERT INTO endereco 
VALUES(NULL, "Curitiba", "PR", "Rua Encontro ", "8", NULL, 9);
INSERT INTO endereco 
VALUES(NULL, "Brasilia", "DF", "Av Crefisa", "21", "Travessa com a Rua Palestra Italia", 10);


-- Dependente
INSERT INTO dependente
	VALUES(NULL, "Lucianinho Huck", "1950-01-02", 7);
INSERT INTO dependente
    VALUES(NULL, "Angel Huck", "1952-06-21", 7);
INSERT INTO dependente
    VALUES(NULL, "Tucano Huck", "1953-12-15", 8);
INSERT INTO dependente
    VALUES(NULL, "Jorgito Valdivia", "1949-01-02", 1);
INSERT INTO dependente
    VALUES(NULL, "Linus Gates", "1945-03-30", 2);
INSERT INTO dependente
    VALUES(NULL, "Ubuntu Gates", "1948-11-15", 2);
INSERT INTO dependente
    VALUES(NULL, "Will Bernardes", "1950-08-21", 3);
INSERT INTO dependente
    VALUES(NULL, "Maria Bonner", "1952-02-02", 9);
INSERT INTO dependente
    VALUES(NULL, "Patricia Santos", "1940-09-19", 4);
INSERT INTO dependente
    VALUES(NULL, "Silvia Fausto", "1952-07-10", 5);
INSERT INTO dependente
    VALUES(NULL, "Ronaldo Bueno", "1940-04-03", 6);
INSERT INTO dependente
    VALUES(NULL, "Flamengo Vice", "1943-11-27", 10);
INSERT INTO dependente
    VALUES(NULL, "Silvia Santos", "1942-01-31", 4);
INSERT INTO dependente
    VALUES(NULL, "Marta Rubens", "1943-10-10", 6);
INSERT INTO dependente
    VALUES(NULL, "Dudu Pereira", "1946-08-31", 10);
    
    
-- Projeto
INSERT INTO projeto
	VALUES(NULL, "Tela de cadastro de fornecedores", "1970-09-12", 100000.0);
INSERT INTO projeto
	VALUES(NULL, "Migracao para Cloud", "1970-12-20", 300000.0);
INSERT INTO projeto
	VALUES(NULL, "Implantação Ecommerce", "1970-10-10", 350000.0);
INSERT INTO projeto
	VALUES(NULL, "Nova interface CRM", "1970-11-15", 250000.0);
    

INSERT INTO colaborador_projeto(fkColaborador, fkProjeto)
VALUES (1, 2), (2, 2), (3, 1), (4, 3), (5, 1), (6, 4), (7, 3), (8, 4), (9, 2), (10, 4), (2, 3), (8, 1), (10, 1);

    
SELECT * FROM colaborador;
SELECT * FROM departamento;
SELECT * FROM dependente;
SELECT * FROM endereco;
SELECT * FROM projeto;
SELECT * FROM colaborador_projeto;

-- --------------------------------------------------------------------
-- AULA 13/07
-- UPDATE; DELETE; CORREÇÃO DA ATIVIDADE

USE empresa_db;

-- UPDATE colaborador SET salario = 8500; -- PERIGO!!!! É errado fazer isso! Pois atualiza todas as linhas da tabela sem critério nenhum.

UPDATE colaborador 
SET salario = 9000
WHERE idcolaborador = 2; -- WHERE -> indica uma condição para aplicar o UPDATE

UPDATE colaborador
SET nome = "Jorge Valdivia",
	salario = 7000,
    dataNascimento = "1920-03-30",
    fkDepartamento = 4
WHERE idColaborador = 1; -- Se uma coluna falhar não atualiza nenhum campo

-- DELETE FROM endereco; -- CUIDADO!!! O comando dessa forma apaga todos os registros da tabela!

DELETE FROM colaborador
WHERE idColaborador = 3; -- OBS.: só podemos apagar registros que não tem vínculo com outros regsitros de outras tabelas


SELECT * FROM colaborador;