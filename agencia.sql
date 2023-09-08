create database agencia;
show databases;
use agencia;

create table Departamento(
Departamentoid int primary key,
Nomedepartamento varchar (255)
);

insert into Departamento (Departamentoid, Nomedepartamento) values 
(1, "RH"),
(2, "Vendas"),
(3, "TI"),
(4, "Marketing"),
(5, "Contabilidade");

create table Funcionarios(
Funcionarioid int primary key,
Nome varchar (255),
Cargo varchar (255),
Salario int,
Departamentoid int,
foreign key (Departamentoid) references Departamento (Departamentoid)
);

insert into Funcionarios (Funcionarioid, Nome, Cargo, Salario, Departamentoid) values
(1, "Marconi santos", "Gerente de RH", 16000.00, 1),
(2, "Maria thereza","Vendedora", 2500.00, 2),
(3, "Rodrigues", "Analista de TI", 1500.00,3),
(4, "Ana julia", "Especialista de Marketing", 4600.00, 4),
(5, "July souza", "Contador", 3800.00, 5);

select * from Departamento;
select * from Funcionarios;