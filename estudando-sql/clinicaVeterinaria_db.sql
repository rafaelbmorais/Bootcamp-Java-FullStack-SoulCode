CREATE DATABASE clinicaVeterinaria_db;
USE clinicaVeterinaria_db;

CREATE TABLE tutor(
	idTutor INTEGER PRIMARY KEY AUTO_INCREMENT,
    nomeTutor VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE endereco(
	idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT,
    uf VARCHAR(2) NOT NULL,
    cidade VARCHAR(40) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(40) DEFAULT("Sem complemento"),
    cep VARCHAR(8) NOT NULL,
    fkTutor INTEGER UNIQUE NOT NULL,
    FOREIGN KEY(fkTutor) REFERENCES tutor(idTutor) 
);

CREATE TABLE felino(
	idFelino INTEGER PRIMARY KEY AUTO_INCREMENT,
    nomeFelino VARCHAR(30) NOT NULL,
    dataNascimento DATE NOT NULL,
    raca VARCHAR(25) NOT NULL DEFAULT("Sem raça definida"),
    cor VARCHAR(20) NOT NULL,
    sexo VARCHAR(5) NOT NULL,
    castrado VARCHAR(3) NOT NULL,
    fkTutor INTEGER NOT NULL,
    FOREIGN KEY(fkTutor) REFERENCES tutor(idTutor)
);

CREATE TABLE veterinario(
	idVeterinario INTEGER PRIMARY KEY AUTO_INCREMENT,
    nomeVeterinario VARCHAR(100) NOT NULL,
    especialidade VARCHAR(30) NOT NULL,
    crmv VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE consulta(
	idConsulta INTEGER PRIMARY KEY AUTO_INCREMENT,
    dataConsulta DATE NOT NULL,
    horaConsulta TIME NOT NULL,
    preco DECIMAL(5,2) NOT NULL DEFAULT(100.00),
    diagnostico VARCHAR(150) NOT NULL,
    fkFelino INTEGER NOT NULL,
    fkVeterinario INTEGER NOT NULL,
    FOREIGN KEY(fkFelino) REFERENCES felino(idFelino),
    FOREIGN KEY(fkVeterinario) REFERENCES veterinario(idVeterinario)
);

CREATE TABLE procedimento(
	idProcedimento INTEGER PRIMARY KEY AUTO_INCREMENT,
    nomeProcedimento VARCHAR(50) NOT NULL,
    Descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(7, 2) NOT NULL,
    fkVeterinario INTEGER NOT NULL,
    FOREIGN KEY(fkVeterinario) REFERENCES veterinario(idVeterinario)
);

CREATE TABLE rel_felino_procedimento(
	idRelFelinoProcedimento INTEGER PRIMARY KEY AUTO_INCREMENT,
	dataProcedimento DATE NOT NULL,
	horaProcedimento TIME NOT NULL,
    fkFelino INTEGER NOT NULL,
    fkProcedimento INTEGER NOT NULL,
    FOREIGN KEY(fkFelino) REFERENCES felino(idFelino),
    FOREIGN KEY(fkProcedimento) REFERENCES procedimento(idProcedimento)
);

INSERT INTO tutor (nomeTutor, cpf, telefone, email) VALUES
	('José Egídio', '12345678900', '1199999999', 'egidio@email.com'),
	('Maria das Dores', '09876543211', '2188888888', 'dasdores@email.com'),
	('Pedro Santos', '06543219877', '3177777777', 'pedrosantos@email.com'),
	('Paula Pereira', '03219876544', '8566666666', 'paula.pereira@email.com'),
	('Carlos José', '98765432122', '8555555555', 'jose.carlos@email.com'),
	('Sebastiana Moura', '87654321033', '1144444444', 'sebastiana@email.com'),
	('João Pedro', '76543219844', '1333333333', 'joao.pedro@email.com'),
	('Carolina Silva', '65432198755', '4822222222', 'carol@email.com'),
	('Fernanda Moura', '54321098766', '8511111111', 'fe_moura@email.com'),
	('Renato Bueno', '43219876577', '9200000000', 'bueno.renato@email.com'),
	('Bruna Cristina', '32198765488', '9899999999', 'bruna.cristina@email.com'),
	('Maria Joaquina', '21098765499', '8688888888', 'mariajoaquina@email.com'),
	('Miguel Santo', '19876543200', '6377777777', 'miguel@email.com');

INSERT INTO endereco (uf, cidade, rua, numero, complemento, cep, fkTutor) VALUES
	('SP', 'São Paulo', 'Rua das Acácias', '123', 'Sem complemento', '01234567', 1),
	('RJ', 'Rio de Janeiro', 'Rua dos Ipês', '456', 'Sem complemento', '12345678', 2),
	('MG', 'Belo Horizonte', 'Rua das Flores', '789', 'Sem complemento', '23456789', 3),
	('CE', 'Iguatu', 'Rua dos Pinheiros', '1000', 'Sem complemento', '34567890', 4),
	('CE', 'Fortaleza', 'Rua das Palmeiras', '1234', 'Sem complemento', '45678901', 5),
	('SP', 'Guarulhos', 'Rua das Orquídeas', '5678', 'Sem complemento', '56789012', 6),
	('SP', 'Santos', 'Rua das Tulipas', '7890', 'Sem complemento', '67890123', 7),
	('SC', 'Florianópolis', 'Rua das Margaridas', '1001', 'Sem complemento', '78901234', 8),
	('CE', 'Caririaçu', 'Rua das Violetas', '1235', 'Sem complemento', '89012345', 9),
	('AM', 'Manaus', 'Rua das Hortênsias', '4567', 'Sem complemento', '90123456', 10),
    ('MA', 'São Luís', 'Rua das Bromélias', '1002', 'Sem complemento', '91012345', 11),
	('PI', 'Teresina', 'Rua das Gardênias', '1236', 'Sem complemento', '89013456', 12),
	('TO', 'Palmas', 'Rua das Orquídeas', '5679', 'Sem complemento', '78902123', 13);

INSERT INTO felino (nomeFelino, dataNascimento, raca, cor, sexo, castrado, fkTutor) VALUES
	('Pretinho', '2020-01-01', 'Sem raça definida', 'Preto', 'Macho', 'Não', 1),
	('Floquinha', '2020-02-02', 'Sem raça definida', 'Branca', 'Fêmea', 'Não', 2),
	('Castanha', '2020-03-03', 'Sem raça definida', 'Castanha', 'Fêmea', 'Sim', 3),
	('Stark', '2020-04-04', 'Sem raça definida', 'Cinza', 'Macho', 'Não', 4),
	('Rickon', '2020-05-05', 'Sem raça definida', 'Amarela', 'Macho', 'Não', 5),
	('Targaryen', '2020-06-06', 'Siamese', 'Branca e preta', 'Fêmea', 'Não', 6),
	('Panda', '2020-07-07', 'Maine Coon', 'Preto e branco', 'Macho', 'Sim', 7),
	('Belinha', '2020-08-08', 'Ragdoll', 'Branca e cinza', 'Fêmea', 'Não', 8),
	('Careca', '2020-09-09', 'Sphynx', 'Sem pelo', 'Macho', 'Sim', 9),
	('Brownie', '2020-10-10', 'Persiano', 'Marrom', 'Macho', 'Não', 10),
	('Nenem', '2020-11-11', 'Sem raça definida', 'Preta', 'Macho', 'Não', 11),
	('Branca de Neve', '2020-12-12', 'Exótico', 'Branca', 'Fêmea', 'Sim', 12),
	('Cinzento', '2021-01-01', 'Oriental', 'Cinza', 'Macho', 'Não', 13),
	('Lindeusa', '2021-02-02', 'American Shorthair', 'Cinza e Preta', 'Fêmea', 'Sim', 3),
	('Madonna', '2021-03-03', 'Siberiano', 'Amarela e Preta', 'Fêmea', 'Não', 7),
	('Nino', '2021-04-04', 'Sem raça definida', 'Amarela', 'Macho', 'Não', 12);

INSERT INTO veterinario (nomeVeterinario, especialidade, crmv) VALUES
	('Dra. Carolina Morais', 'Clínica Geral', '161018'),
	('Dr. João da Silva', 'Cardiologista', '123456'),
	('Dra. Maria da Costa', 'Oncologista', '789012'),
	('Dr. Pedro dos Santos', 'Clínico Geral', '345678');
    
INSERT INTO consulta (dataConsulta, horaConsulta, preco, diagnostico, fkFelino, fkVeterinario) VALUES
	('2023-03-08', '10:00:00', 100.00, 'Rotina - Tomar vacina anti rabica', 1, 1),
	('2023-03-08', '11:00:00', 100.00, 'Primeira consulta - Realizar a castração', 2, 2),
	('2023-03-08', '12:00:00', 100.00, 'Corte profundo por objeto estranho na pata traseira direita', 3, 3),
	('2023-03-08', '13:00:00', 100.00, 'Possível lesão na vertebra', 4, 4),
	('2023-03-08', '14:00:00', 100.00, 'Rotina - Eco do coração', 5, 1),
	('2023-03-08', '15:00:00', 100.00, 'Vomito constante - Realizar ultrassonografia abdome', 6, 2),
	('2023-03-08', '16:00:00', 100.00, 'Queda com pancada na cabeça', 7, 3),
	('2023-03-08', '17:00:00', 100.00, 'Rotina - Hemograma completo', 8, 4),
	('2023-03-08', '18:00:00', 100.00, 'Chipagem', 9, 1),
	('2023-03-08', '19:00:00', 100.00, 'Feridas no nariz, possível esporotricose felina', 10, 2),
	('2023-03-09', '10:00:00', 100.00, 'Biopsia do intestino, possível linfoma', 11, 3),
	('2023-03-09', '11:00:00', 100.00, 'Correção da vávula do coração', 12, 4),
	('2023-03-09', '12:00:00', 100.00, 'Rotina de verificação do avanço da doença', 13, 1),
	('2023-03-09', '13:00:00', 100.00, 'Realizar a castração', 14, 2),
	('2023-03-09', '14:00:00', 100.00, 'Gato mancando, tirar radiografia da pata dianteira esquerda', 15, 3),
	('2023-03-09', '15:00:00', 100.00, 'Hemograma Completo', 16, 4),
	('2023-03-09', '16:00:00', 100.00, 'Rotina', 1, 1),
	('2023-03-09', '17:00:00', 100.00, 'Incomodo abdominal, realizar ultrassonografia do abdome', 2, 2),
	('2023-03-09', '18:00:00', 100.00, 'Hemograma completo', 3, 3),
	('2023-03-09', '19:00:00', 100.00, 'Chipagem', 4, 4);
    
INSERT INTO procedimento (nomeProcedimento, descricao, preco, fkVeterinario) VALUES
('Vacinação', 'Procedimento para administrar vacinas', 100.00, 1),
('Castração', 'Procedimento cirúrgico para remover os órgãos reprodutivos', 500.00, 1),
('Cirurgia geral', 'Procedimento cirúrgico para tratar alguma doença ou lesão', 2000.00, 1),
('Radiografia', 'Procedimento para tirar uma radiografia', 100.00, 4),
('Ecocardiografia', 'Procedimento para fazer exame cardiológico', 200.00, 2),
('Ultrassom', 'Procedimento para exame de ultrassonografia', 300.00, 4),
('Ressonância magnética', 'Procedimento para fazer uma ressonância magnética', 400.00, 2),
('Coleta de sangue', 'Procedimento para coleta e análise do sangue', 160.00, 1),
('Chipagem', 'Procedimento para implantar um microchip', 200.00, 1),
('Tratamento de doenças de pele', 'Procedimento para tratar doenças de pele', 500.00, 4),
('Biopsia', 'Procedimento para analisar possível doença oncológica', 2000.00, 3),
('Cirurgia cardíaca', 'Procedimento para tratar doenças cardíacas', 2000.00, 2),
('Tratamento oncológico', 'Procedimento de rotina para paciente oncológico', 400.00, 3);


INSERT INTO rel_felino_procedimento (dataProcedimento, horaProcedimento, fkFelino, fkProcedimento) VALUES
	('2023-03-10', '10:00:00', 1, 1),
	('2023-03-10', '11:00:00', 2, 2),
	('2023-03-10', '12:00:00', 3, 3),
	('2023-03-10', '13:00:00', 4, 4),
	('2023-03-10', '14:00:00', 5, 5),
	('2023-03-10', '15:00:00', 6, 6),
	('2023-03-10', '16:00:00', 7, 7),
	('2023-03-10', '17:00:00', 8, 8),
	('2023-03-10', '18:00:00', 9, 9),
	('2023-03-10', '19:00:00', 10, 10),
	('2023-03-11', '10:00:00', 11, 11),
	('2023-03-11', '11:00:00', 12, 12),
	('2023-03-11', '12:00:00', 13, 13),
	('2023-03-11', '13:00:00', 14, 2),
	('2023-03-11', '14:00:00', 15, 4),
	('2023-03-11', '15:00:00', 16, 8),
	('2023-03-11', '16:00:00', 13, 8),
	('2023-03-11', '17:00:00', 2, 6),
	('2023-03-11', '18:00:00', 3, 8),
	('2023-03-11', '19:00:00', 4, 9);



-- FILTROS

-- Aumento do procedimento de Castração de R$ 500.00 para R$ 600.00
UPDATE procedimento 
	SET preco = preco * 1.2
WHERE nomeProcedimento = 'Castração';

-- Deletado um registro onde o procedimento era de chipagem
DELETE 
FROM rel_felino_procedimento 
WHERE fkProcedimento = 9 
	LIMIT 1;

SELECT * FROM rel_felino_procedimento;

-- Quantidade Total de procedimentos agrupados por veterinário
SELECT COUNT(*) AS QtdProcedimentos, vet.nomeVeterinario
FROM rel_felino_procedimento AS rel
	JOIN procedimento AS proc
	ON proc.idProcedimento = rel.fkProcedimento
	JOIN veterinario AS vet
	ON vet.idVeterinario = proc.fkVeterinario
	GROUP BY vet.idVeterinario;

-- Lista os nomes dos pacientes atendidos em procedimentos pelo veterinário com o id = 3;
SELECT fel.nomeFelino
FROM felino AS fel
	JOIN rel_felino_procedimento AS rel
    ON fel.idFelino = rel.fkFelino
    JOIN procedimento AS proc
    ON rel.fkProcedimento = proc.idProcedimento
WHERE proc.fkVeterinario = 3;

-- Quantidade Total de consultas por veterinário, informando o nome do veterinário
SELECT COUNT(*) AS QtdConsultas, vet.nomeVeterinario
FROM consulta AS cons
	JOIN veterinario AS vet
    ON cons.fkVeterinario = vet.idVeterinario
	GROUP BY cons.fkVeterinario;
    
-- Lista os nomes dos pacientes atendidos em consulta pelo veterinário com o id = 4
SELECT fel.nomeFelino
FROM felino AS fel
	JOIN consulta AS cons
	ON fel.idFelino = cons.fkFelino
WHERE cons.fkVeterinario = 4;

-- Lista os nomes dos procedimentos realizados pelo veterinario com o id = 2
SELECT nomeProcedimento
FROM procedimento
WHERE fkVeterinario = 2;

-- Informa o valor total recebido,  em procedimentos,  pelo veterinario com o id = 1
SELECT SUM(proc.preco) AS valorRecebido
FROM procedimento AS proc
	JOIN rel_felino_procedimento AS rel
    ON proc.idProcedimento = rel.fkProcedimento
WHERE proc.fkVeterinario = 1;

-- Lista o nome de cada procedimento que cada felino realizou
SELECT proc.nomeProcedimento, fel.idFelino
FROM procedimento AS proc
	JOIN rel_felino_procedimento AS rel
	ON proc.idProcedimento = rel.fkProcedimento
	JOIN felino AS fel
	ON rel.fkFelino = fel.idFelino;
    
-- Mostra a média dos preços dos procedimentos. 
SELECT AVG(preco) AS mediaProcedimento
FROM procedimento;

-- Mostra os valores mínimo e máximo dos procedimentos. 
SELECT MIN(preco) AS menorPreco, MAX(preco) AS maiorPreco
FROM procedimento;
    
-- Mostra os 5 gatos que nasceram mais próximos da data de hoje.
SELECT *
FROM felino
	ORDER BY ABS(DATEDIFF(dataNascimento, CURRENT_DATE()))
	LIMIT 5;
    
-- Felinos que nasceram no mês atual. 
SELECT *
FROM felino
WHERE MONTH(dataNascimento) = MONTH(NOW());

-- Mostra os nomes dos tutores e seu(s) respectivo(s) felino(s)
SELECT t.nomeTutor, f.nomeFelino
FROM tutor AS t
	JOIN felino AS f
    ON t.idTutor = f.fkTutor
