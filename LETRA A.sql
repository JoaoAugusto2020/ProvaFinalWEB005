BANCO DE DADOS - CARROS

LETRA A:

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