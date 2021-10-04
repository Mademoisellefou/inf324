USE inf324test;
CREATE TABLE Usuario (
    CI int NOT NULL ,
    usuario VARCHAR(50) NULL,
    password VARCHAR(50) NULL,
    PRIMARY KEY (CI)
)
--MYSQL
CREATE TABLE Persona (
    CI int NOT NULL ,
    nombre VARCHAR(50) NOT  NULL,
    fechaNac date NOT NULL,
    departamento int NOT NULL ,
    PRIMARY KEY (CI)
)
--MYSQL

-- postgrest
CREATE TABLE Persona (
    CI int PRIMARY KEY NOT NULL ,
    nombre VARCHAR(50) NOT  NULL,
    fechaNac date NOT NULL,
    departamento int NOT NULL 
)
-- postgrest


CREATE TABLE Nota (
    CI int NOT NULL ,
    sigla VARCHAR(50) NOT  NULL,
    nota1 int NULL ,
    nota2 int NULL ,
    nota3 int NULL ,
    notafinal int NULL ,
    primary key(CI,sigla)
)

CREATE TABLE materia(
    sigla VARCHAR(50) NOT  NULL,
    descripcion VARCHAR(50) NOT  NULL,
    iddoc int NOT NULL,
    primary key(sigla)
)
CREATE TABLE docente(
    iddoc int NOT NULL,
    password VARCHAR(150) NOT  NULL,
    nombreC VARCHAR(150) NOT  NULL,
    primary key(iddoc)
)

