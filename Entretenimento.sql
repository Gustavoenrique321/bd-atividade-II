create database jornalismo;
show databases;
use jornalismo;

create table Artigos(
Artigoid int primary key,
titulo varchar(255), 
conteudo varchar(255),
datapublicacao date
);

insert into Artigos (Artigoid, titulo, conteudo, datapublicacao) values 
(1,  "Como criar um site de sucesso", "Este artigo, você entenderá como realizar a criação de um site.", '2023-03-06'),
(2,  "Viagem nas ferias", "Aqui você verá dicas para suas viagens serem mais tranquilas nas ferias.", '2023-03-15'),
(3, "Dicas de cozinha" , "Dicas para quem quer fazer aquele delicioso almoço no final de semana", '2023-04-11'),
(4, "Moda e Estilo" , "As melhores marcas de roupas para um visual bem elegante.", '2023-05-03'),
(5, "Salão de beleza: Sua beleza é nossa prioridade" , "venha relaxar no salão de beleza, Você sai daqui feliz e ainda mais bonita.", '2023-05-18');


insert into Comentarios (Comentarioid, Artigoid, Autor, Texto, datacomentario) values
(1, 1, "Rafael", "Incrível como os avanços tecnológicos vem crescendo a cada ano.", '2023-03-20'),
(2, 2, "Joanna", "Belas dicas! irei me aprofundar mais sobre.", '2023-03-16'),
(3, 3, "Maria", "Amei a receita! Nada melhor que um belo almoço em familia.", '2023-08-15'),
(4, 4, "Carol", "Adorei o estilo! Estão de parabéns!.", '2023-02-25'),
(5, 5, "Claudia", "Bem interessante!. Toda mulher merece um dia de princesa!" ,'2023-06-25');

drop table Comentarios;
create table Comentarios (
Comentarioid int primary key,
Artigoid int,
Autor varchar (255),
Texto varchar (255),
datacomentario date,
foreign key(Artigoid) references Artigos (Artigoid)
);
select * from Artigos;
select * from Comentarios;
drop table Artigos;
drop database jornalismo;