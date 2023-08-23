CREATE DATABASE db_Rh;
USE db_Rh;

CREATE TABLE tb_tabela(
id bigint auto_increment,
nome varchar(255),
idade bigint,
cracha int,
salario decimal (8,2) not null, 
cargo varchar (255),
primary key (id)
); 

insert into tb_tabela (nome,idade,cracha,salario,cargo) value ("Carolina",24,13,5000.00,"Devjunior");
insert into tb_tabela (nome,idade,cracha,salario,cargo) value ("Richard",29,14,5000.00,"Devjunior");
insert into tb_tabela (nome,idade,cracha,salario,cargo) value ("Alessandro",30,15,8000.00,"PlenoJunior");
insert into tb_tabela (nome,idade,cracha,salario,cargo) value ("Erick",28,30,9000.00,"Senior");
insert into tb_tabela (nome,idade,cracha,salario,cargo) value ("Gustavo", 22, 10, 1000.00, "estagiario");

select * from tb_tabela;

select * from tb_tabela;
select * from tb_tabela where salario<2000;
select * from tb_tabela where salario>2000;

update tb_tabela set salario = 1000.00 where id=2;

