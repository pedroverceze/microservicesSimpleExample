--CREATE DATABASE ReceitasTop
--GO

USE ReceitasTop
GO

CREATE TABLE CLIENTE (
	cliente_id int primary key identity,
	cliente_name varchar(50) not null,
	cliente_idade int not null,
	cliente_genero varchar(1),
	createdAt datetime not null
)

CREATE TABLE INGREDIENTE(
	ingrediente_id int primary key identity,
	ingrediente_nome varchar(50) not null,
	createdAt datetime not null
)



CREATE TABLE RECEITA(
	receita_id int primary key identity,
	receita_nome varchar(50) not null,
	receita_dificuldade int null,
	receita_modo_preparo varchar(500) not null,
	createdAt datetime not null,
	createdBy varchar(50)
)

CREATE TABLE RECEITA_INGREDIENTE(
	receita_id int not null,
	ingrediente_id int not null
)



ALTER TABLE RECEITA_INGREDIENTE
ADD CONSTRAINT FK_RECEITA_ID
FOREIGN KEY (receita_id)
REFERENCES RECEITA(receita_id)

ALTER TABLE RECEITA_INGREDIENTE
ADD CONSTRAINT FK_INGREDIENTE_ID
FOREIGN KEY (ingrediente_id)
REFERENCES INGREDIENTE(ingrediente_id)





