# CREATE 
# COMO CRIAR UM BANCO DE DADOS?
CREATE DATABASE hospital; 

# COMO SELECIONAR UM BANCO DE DADOS?
USE hospital;
# COMO CRIAR UMA TABELA?
CREATE TABLE medicos  (
	# nome tipo propriedades  (opcional)
    matricula INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    crm VARCHAR(10),
    salario FLOAT,
    especialidade ENUM('pediatria', 'geral', 'endocrino', 'outro') DEFAULT 'outro'
    
);


# ALTER TABLE -> Permite alterar/editar uma tabela
-- Como renomear uma tabela?
RENAME TABLE medicos TO medico;

# Como adicionar colunas?
ALTER TABLE medicos ADD COLUMN data_nascimento DATE AFTER nome;

# Como remover uma coluna?
ALTER TABLE medicos DROP COLUMN crm; 

# Como modificar uma coluna?
ALTER TABLE medicos MODIFY salario FLOAT NOT NULL;
ALTER TABLE medicos MODIFY especialidade VARCHAR(50) NOT NULL;

#Como renomear uma coluna?
ALTER TABLE medicos CHANGE data_nascimento dt_nascimento DATE;


#Como obter uma descrição da tabela?
DESCRIBE medicos;
SHOW FIELDS FROM medicos;
ALTER TABLE medicos ADD data_criacao DATETIME DEFAULT NOW();
