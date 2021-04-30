/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Leonardo
 * Created: 22/08/2020
 */

create database syspizza;

create table funcionario(
    id serial,
    nome varchar(100),
    salario numeric(10,2),
    telefone varchar(30),
    constraint pk_funcionario primary key (id)
);

create table cliente(
	id serial,
	nome varchar(100),
        cpf varchar(20),
	email varchar(50),
	senha varchar(20),
	telefone varchar(20),
	constraint pk_cliente primary key(id)
);

create table produto(
    idProduto serial,
    descricao varchar(100),
    dataValidade varchar(50),
    medida numeric(10,2),
    valor numeric(10,2),
    constraint pk_produto primary key (idProduto)
);

create table bebida(
    idBebida serial,
    tipo varchar(100),
    idProduto integer,
    constraint pk_bebida primary key (idBebida),
    constraint fk_bebida_produto foreign key (idProduto)
        references produto (idProduto)
);

create table fornecedor(
    idFornecedor serial,
    cnpj varchar(18),
    idPessoa integer,
    constraint pk_fornecedor primary key (idFornecedor),
    constraint fk_fornecedor_pessoa foreign key (idPessoa)
        references pessoa (idPessoa)
);

create table pessoa(
	idPessoa serial,
	nome varchar (100),
	email varchar (100),
	telefone varchar (100),
	constraint pk_pessoa primary key (idPessoa)
);

