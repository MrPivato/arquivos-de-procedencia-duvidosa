CREATE DATABASE universidade;
USE universidade;

## definição de tabelas
CREATE TABLE funcionario (
	id INT NOT NULL,
    nome VARCHAR(20),
    PRIMARY KEY (id)
);

# representa uma turma de alunos
CREATE TABLE turma (
	id VARCHAR(10) NOT NULL,
    nome VARCHAR(60),
    tamanho INT,
    turma_pai VARCHAR(10),
    PRIMARY KEY(id),
    FOREIGN KEY (turma_pai) REFERENCES turma(id)
);

CREATE TABLE sala (
	id INT NOT NULL,
    capacidade INT,
    PRIMARY KEY (id)
);

CREATE TABLE disciplina (
	id VARCHAR(10) NOT NULL,
    nome VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE TABLE evento (
	id INT NOT NULL,
    id_disciplina VARCHAR(10),
    dia_da_semana VARCHAR(15),
    hora TIME,
	duracao INT,
    id_sala INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_sala) REFERENCES sala(id),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id)
);

CREATE TABLE cursa (
	id_turma VARCHAR(10),
    id_evento INT,
    PRIMARY KEY (id_turma, id_evento),
    FOREIGN KEY (id_turma) REFERENCES turma(id),
    FOREIGN KEY (id_evento) REFERENCES evento(id)
);

CREATE TABLE ministra (
	id_funcionario INT,
    id_evento INT,
    PRIMARY KEY (id_funcionario, id_evento),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id),
    FOREIGN KEY (id_evento) REFERENCES evento(id)
);

CREATE TABLE ocorre (
	id_evento INT,
    semana_do_ano INT,
    PRIMARY KEY (id_evento, semana_do_ano),
    FOREIGN KEY (id_evento) REFERENCES evento(id)
);

## inserção de registros
INSERT INTO disciplina VALUES ('BD-I', 'Banco de Dados I');
INSERT INTO disciplina VALUES ('BD-II', 'Banco de Dados II');
INSERT INTO disciplina VALUES ('POO-I', 'Programação Orientada a Objetos I');
INSERT INTO disciplina VALUES ('POO-II', 'Programação Orientada a Objetos II');

INSERT INTO turma (id, nome) VALUES ('ADS-2017', 'Análise e Desenvolvimento de Sistemas, 2017');
INSERT INTO turma VALUES ('ADS-2017-A', 'Análise e Desenvolvimento de Sistemas, 2017, Parte A', 15, 'ADS-2017');
INSERT INTO turma VALUES ('ADS-2017-B', 'Análise e Desenvolvimento de Sistemas, 2017, Parte B', 15, 'ADS-2017');
INSERT INTO turma VALUES ('ADS-2016', 'Análise e Desenvolvimento de Sistemas, 2016, única turma', 30, 'ADS-2016');

INSERT INTO funcionario VALUES (1, 'Alice');
INSERT INTO funcionario VALUES (2, 'Bruna');
INSERT INTO funcionario VALUES (3, 'Carlos');
INSERT INTO funcionario VALUES (4, 'Diego');
INSERT INTO funcionario VALUES (5, 'Eduarda');

INSERT INTO sala VALUES (1, 20);
INSERT INTO sala VALUES (2, 30);
INSERT INTO sala VALUES (3, 40);
INSERT INTO sala VALUES (4, 40);

INSERT INTO evento VALUES (1, 'BD-I',  'Sexta-feira', '19:00:00', 4, 1);
INSERT INTO evento VALUES (2, 'BD-II', 'Sexta-feira', '19:00:00', 4, 2);
INSERT INTO evento VALUES (3, 'POO-I', 'Quarta-feira', '18:00:00', 1, 3);
INSERT INTO evento VALUES (4, 'POO-I', 'Quarta-feira', '19:00:00', 4, 3);
INSERT INTO evento VALUES (5, 'POO-I', 'Quarta-feira', '19:00:00', 5, 3);

INSERT INTO ocorre VALUES (1, 3);
INSERT INTO ocorre VALUES (1, 4);
INSERT INTO ocorre VALUES (1, 5);
INSERT INTO ocorre VALUES (2, 3);
INSERT INTO ocorre VALUES (2, 5);

INSERT INTO ministra VALUES (1, 1);
INSERT INTO ministra VALUES (2, 2);
INSERT INTO ministra VALUES (3, 3);
INSERT INTO ministra VALUES (4, 4);

INSERT INTO cursa VALUES ('ADS-2017-A', 1);
INSERT INTO cursa VALUES ('ADS-2017-B', 1);
INSERT INTO cursa VALUES ('ADS-2017-A', 3);
INSERT INTO cursa VALUES ('ADS-2016', 2);

# 1
SELECT id_sala AS sala 
FROM evento 
WHERE id = 1;

# 2
SELECT id 
FROM evento 
WHERE dia_da_semana = "Sexta-Feira" AND hora <> "19:00:00";

# 3
SELECT SUM(capacidade) 
FROM sala 
WHERE id IN (2, 3, 4);

# 4
SELECT id_disciplina, SUM(duracao) AS carga_total 
FROM evento 
WHERE duracao > 4;

# 5
SELECT DISTINCT id_disciplina, dia_da_semana 
FROM evento;

# 6 pegas as fk e pk
SELECT turma.nome 
FROM turma 
INNER JOIN cursa
INNER JOIN evento
INNER JOIN disciplina
ON 	turma.id = cursa.id_turma 
	AND evento.id = cursa.id_evento 
    AND evento.id_disciplina = disciplina.id 
WHERE disciplina.nome LIKE '%Dados';

# 7
SELECT funcionario.nome, disciplina.nome
FROM funcionario
INNER JOIN ministra
INNER JOIN evento
INNER JOIN disciplina
INNER JOIN sala
ON 	funcionario.id = ministra.id_funcionario
	AND ministra.id_evento = evento.id
    AND evento.id_disciplina = disciplina.id
    AND sala.id = 1;

# 8
SELECT SUM(tamanho)
FROM turma
INNER JOIN cursa
ON 	turma.id = cursa.id_turma
	AND cursa.id_evento = 2;
    
# 9
SELECT COUNT(id)
FROM funcionario
INNER JOIN ministra
INNER JOIN cursa
ON 	id = ministra.id_funcionario
	AND ministra.id_evento = cursa.id_evento
    AND cursa.id_turma = 'ADS-2017-A';
    
# 10
SELECT id_disciplina
FROM evento
INNER JOIN ocorre
ON 	semana_do_ano > 10;

# 11
SELECT nome, AVG(duracao)
FROM funcionario
INNER JOIN ministra
INNER JOIN evento
ON 	funcionario.id = ministra.id_funcionario
	AND ministra.id_evento = evento.id
GROUP BY nome;