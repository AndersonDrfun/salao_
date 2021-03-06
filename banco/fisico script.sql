-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.


CREATE TABLE Cliente (
Telefone2 varchar(100),
Nome varchar(100),
CPF varchar(100),
Telefone varchar(100),
Endereco varchar(100),
idCliente int PRIMARY KEY identity(1,1),
DataDeNasc varchar(100)
)

CREATE TABLE Usuario (
Login varchar(100) PRIMARY KEY,
Senha varchar(100),
Nome varchar(100),
idGestor int identity(1,1)
)

CREATE TABLE Funcionario (
Nome varchar(1),
Telefone varchar(1),
Endereco varchar(1),
idFuncionario int() PRIMARY KEY,
Telefone2 varchar(1),
CPF varchar(1),
DataDeNasc varchar(1),
Login varchar(1),
idGestor int identity(1,1),
FOREIGN KEY(Login) REFERENCES Usuario (Login)
)

CREATE TABLE Servico (
Descricao varchar(100),
Valor decimal,
idServico int PRIMARY KEY identity(1,1),
idGestor int identity(1,1)
)

CREATE TABLE Gestor (
idGestor int PRIMARY KEY identity(1,1)
)

CREATE TABLE Produto (
Valor decimal,
Descricao varchar(100),
idProduto int PRIMARY KEY identity(1,1),
idGestor int identity(1,1),
FOREIGN KEY(idGestor) REFERENCES Gestor (idGestor)
)

CREATE TABLE ProcessarServico (
idFuncionario int identity(1,1),
idServico int identity(1,1),
FOREIGN KEY(idFuncionario) REFERENCES Funcionario (idFuncionario),
FOREIGN KEY(idServico) REFERENCES Servico (idServico)
)

CREATE TABLE BaixaNoEstoque (
idFuncionario int identity(1,1),
idProduto int identity(1,1),
FOREIGN KEY(idFuncionario) REFERENCES Funcionario (idFuncionario),
FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
)

CREATE TABLE ManterCliente (
idFuncionario int identity(1,1),
idCliente int identity(1,1),
FOREIGN KEY(idFuncionario) REFERENCES Funcionario (idFuncionario),
FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
)

ALTER TABLE Usuario ADD FOREIGN KEY(idGestor) REFERENCES Gestor (idGestor)
ALTER TABLE Funcionario ADD FOREIGN KEY(idGestor) REFERENCES Gestor (idGestor)
ALTER TABLE Servico ADD FOREIGN KEY(idGestor) REFERENCES Gestor (idGestor)
