drop database EcomLoja;

-- CRIANDO O BANCO DE DADOS

create database EcomLoja;

-- USANDO O BANCO DE DADOS

use EcomLoja;

-- CRIANDO AS TABELAS DO BANCO DE DADOS

create table produtos(
	Id int primary key auto_increment,
    Nome varchar(50),
    Descricao varchar(100),
    Preco decimal(10,2),
    ImageUrl varchar(255),
    Estoque int
);

create table pedido(
	Id int primary key auto_increment,
    DataPedido datetime,
    Total decimal(10,2),
    Status varchar(50),
    Endereco varchar(100),
    FormaPagamento varchar(100),
    Frete decimal(10,2)
);

create table itemPedido(
Id int primary key auto_increment ,
PedidoId int,
ProdutoId int,
Quantidade int,
PrecoUnitario decimal(10,2)
);

-- CONSULTANDO AS TABELAS DO BANCO

select * from produtos;
select * from pedido;
select * from itemPedido;

insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Jogo1','Descricao Jogo-1',150.00, 'Images/metalslug.jpg',10);
    
insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Jogo2','Descricao Jogo-2',150.00, 'Images/metalslug.jpg',10);