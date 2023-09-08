create database Empresa;
use Empresa;

create table Clientes(

clienteid int primary key,
nome varchar (255) NOT NULL,
email varchar (255) NOT NULL,
telefone varchar (22) NOT NULL
);

insert into Clientes(clienteid, nome, email, telefone) values
(1, "Gustavo Henrique", "GustavoHenrique05@gmail.com", "+55 (71) 99211-7122"),
(2, "Rosane", "Rosane@gmail.com", "+55 (71) 99315-6523"),
(3, "Sofia", "Sofia@gmail.com", "+55 (71) 99485-6155"),
(4, "Jake", "Jake@gmail.com", "+55 (71) 98714-7118"),
(5, "Luisa", "Luisa@gmail.com", "+55 (71) 98815-4189");

create table Pedidos (

pedidoid int primary key,
clienteid int not null,
datapedido date not null,
valortotal decimal (10,2) not null,
foreign key (clienteid) references Clientes (clienteid)
);

insert into Pedidos (pedidoid, clienteid, datapedido, valortotal) values 
(1, 1, '2023-06-10', 150.25),
(2, 2, '2023-04-15', 250.25),
(3, 3, '2023-08-11', 22.00),
(4, 4, '2023-07-22', 190.99),
(5, 5, '2023-03-10', 143.90);

select * from clientes;
select * from pedidos;

