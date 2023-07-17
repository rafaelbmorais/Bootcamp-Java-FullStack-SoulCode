CREATE DATABASE loja_db;

USE loja_db;

-- SCHEMA - estrutura de tabelas e colunas

CREATE TABLE vendedor(
	idVendedor INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dataNascimento DATE
);

-- DROP TABLE vendedor; -- apaga todos os registros e o schema da tabela.

-- categora - VARCHAR(30) NOT NULL

INSERT INTO vendedor(nome, sobrenome, email, dataNascimento)
VALUES ("José", "Almir", "jose.almir@email.com", "1990-01-01");

INSERT INTO vendedor(nome, sobrenome, email, dataNascimento)
VALUES ("Maria", "Lucia", "maria.lucia@email.com", "1991-01-01");

-- USO DO ALTER TABLE:
-- Nova Coluna 
ALTER TABLE vendedor
ADD COLUMN cat VARCHAR(30) NOT NULL DEFAULT("Sem categoria"); -- Adiciona uma nova coluna na tabela vendedor e insere um valor padrão na coluna cat

-- Renomear Coluna
ALTER TABLE vendedor
CHANGE cat categoria VARCHAR(30) NOT NULL DEFAULT("Sem categoria");

-- ALterar Constraints
ALTER TABLE vendedor
MODIFY nome VARCHAR(75) NOT NULL;

DESCRIBE vendedor; -- mostra os detalhes de cada coluna da tabela

-- Remover Coluna
ALTER TABLE vendedor
DROP COLUMN dataNascimento;

-- Renomear Tabela
ALTER TABLE vendedor
RENAME vendedores; -- altera o nome da tabela por completo

-- Renomear coluna sem alterar constraints (MySQL 8.0)
ALTER TABLE vendedores
RENAME COLUMN categoria TO cat;

SELECT * FROM vendedor;


