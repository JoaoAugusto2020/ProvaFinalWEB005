BANCO DE DADOS - EMPRESA

HISTÓRICO DE TENTATIVAS:

CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamento (
	codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario (
	codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	salario DECIMAL(20, 2) NOT NULL,
	codigo_departamento INT NOT NULL,
	CONSTRAINT FK_departamento	FOREIGN KEY (codigo_departamento) REFERENCES departamento (codigo)
);

INSERT INTO departamento (nome) VALUES ('RH'), ('TI'), ('Financeiro');
INSERT INTO funcionario (nome, salario, codigo_departamento) VALUES ('João Silva', '2000.00','1'), ('Maria Pereira', '3000.00','2'), ('José Peres', '4000.00','2'), ('Tereza Cristina', '3000.00','3'), ('Francisco José', '1500.00','3');

UPDATE funcionario SET salario = '5000.00' WHERE codigo = 3;

SELECT dp.nome, COUNT(fu.codigo) AS qtd_fun, SUM(fu.salario) AS salario_total
	FROM departamento AS dp
	INNER JOIN funcionario AS fu
	ON fu.codigo_departamento = dp.codigo
	GROUP BY dp.nome;

DELETE FROM funcionario WHERE codigo = 5;