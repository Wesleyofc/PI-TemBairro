CREATE DATABASE marketplace;
USE marketplace;

CREATE TABLE Empreendedor (
    id_empr int NOT null AUTO_INCREMENT PRIMARY KEY,
    nomeCompleto varchar (255) NOT null,
    razaoSocial varchar (255) NOT null,
    endereco varchar (255) NOT null,
    telefone varchar (20) NOT null,
    email varchar (255) NOT null,
    dataNasc date NOT null,
    senha varchar (255) NOT null
);

CREATE TABLE Usuario (
    id_usuario int NOT null AUTO_INCREMENT PRIMARY KEY,
    nomeCompleto varchar (255) NOT null,
    nomeSocial varchar (255) NOT null,
    endereco varchar (255) NOT null,
    telefone varchar (20) NOT null,
    email varchar (255) NOT null,
    dataNasc date NOT null,
    senha varchar (255) NOT null
);

CREATE TABLE Categoria (
    id_categoria int NOT null AUTO_INCREMENT PRIMARY KEY,
    descricao varchar (255) NOT null,
    nome  varchar (255) NOT null
);

CREATE TABLE Produto (
    Nome varchar (255) NOT null,
    descricao varchar (255) NOT null,
    id_produto int NOT null AUTO_INCREMENT PRIMARY KEY,
    fk_Categoria_id_categoria integer,
    fk_Usuario_id_usuario integer
);

CREATE TABLE Adquire (
    fk_Produto_id_produto integer,
    fk_Empreendedor_id_empr integer
);
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (fk_Categoria_id_categoria)
    REFERENCES Categoria (id_categoria)
    ON DELETE RESTRICT;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_3
    FOREIGN KEY (fk_Usuario_id_user)
    REFERENCES Usuario (id_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Adquire ADD CONSTRAINT FK_Empreendedor_para_Varios_Produtos_1
    FOREIGN KEY (fk_Produto_id_produto)
    REFERENCES Produto (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE Adquire ADD CONSTRAINT FK_Empreendedor_para_Varios_Produtos_2
    FOREIGN KEY (fk_Empreendedor_id_empr)
    REFERENCES Empreendedor (id_empr)
    ON DELETE RESTRICT;