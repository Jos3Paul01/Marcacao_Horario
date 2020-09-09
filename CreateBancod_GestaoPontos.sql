CREATE DATABASE G_Ponto
GO

USE G_Ponto
GO

CREATE TABLE departamentos
(
CODE INT IDENTITY PRIMARY KEY  NOT NULL 
,DEPARTAMENTO VARCHAR(30) NOT NULL
,SIGLA VARCHAR(10) NOT NULL
,STATE_ID TINYINT NOT NULL
)


CREATE TABLE funcionarios
(
CODE INT IDENTITY PRIMARY KEY NOT NULL
,NOME VARCHAR(20) NOT NULL
,SOBRE_NOME VARCHAR(50) NOT NULL
,STATE_ID TINYINT NOT NULL
,COD_DEP INT
FOREIGN KEY(cod_dep) REFERENCES departamentos(code)
)


CREATE TABLE emails
(
CODE INT IDENTITY PRIMARY KEY NOT NULL
,PADRAO VARCHAR(20) NOT NULL
,EMAIL VARCHAR(50) NOT NULL
,STATE_ID TINYINT NOT NULL
,COD_FUNC INT
FOREIGN KEY(COD_FUNC) REFERENCES funcionarios(code)
)

CREATE TABLE users
(
CODE INT IDENTITY PRIMARY KEY NOT NULL
,[LOGIN] VARCHAR(20) NOT NULL
,SENHA VARCHAR(50) NOT NULL
,DT_ACESSI DATETIME NOT NULL
,STATE_ID TINYINT NOT NULL
,COD_MAIL INT
,COD_DEP INT
FOREIGN KEY(COD_MAIL) REFERENCES emails(code),
FOREIGN KEY(COD_DEP) REFERENCES departamentos(code)
)

CREATE TABLE horarios
(
CODE INT IDENTITY PRIMARY KEY NOT NULL
,ENTRADA VARCHAR(10) NOT NULL
,SAIDA_ALMO�O VARCHAR(10) NOT NULL
,RETORNO_ALMO�O VARCHAR(10) NOT NULL
,SAIDA VARCHAR(10) NOT NULL
,DIA DATETIME NOT NULL
,STATE_ID TINYINT NOT NULL
,COD_LOGIN INT
FOREIGN KEY(COD_LOGIN) REFERENCES users(code)
)

CREATE TABLE h_extras
(
COD_LOGIN INT
,COD_HORA INT
,POSITIVAS VARCHAR(10)
,NEGATIVAS VARCHAR(10)
,ACORDADAS VARCHAR(10)
,TOTAL VARCHAR(10)

FOREIGN KEY(COD_LOGIN) REFERENCES users(code),
FOREIGN KEY(COD_HORA) REFERENCES horarios(code)
)

CREATE NONCLUSTERED INDEX IX_EXTRAS ON h_extras (COD_LOGIN,COD_HORA)