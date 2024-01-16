CREATE DATABASE escola;
CREATE TABLE alunos (
	matricula INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    idade INT,
    curso VARCHAR(50),

);
    
ALTER TABLE alunos ADD COLUMN data_nascimento DATE AFTER idade;

ALTER TABLE alunos ADD data_criacao DATETIME DEFAULT ();


    