CREATE DATABASE dp_ecommerce;
use dp_ecommerce; 

create table dp_ecommerce(
id bigint auto_increment, 

nome varchar (255),
preco decimal (8,2),
marca varchar (255), 
cor varchar (255), 
fornecedor varchar (255),
primary key (id)
); 

insert into dp_ecommerce (nome,preco,marca,cor,fornecedor) value ("teclado",100.00,"dragon","preto","dragonball");
insert into dp_ecommerce (nome,preco,marca,cor,fornecedor) value ("mouse", 89.00,"dragon","branco","dragonball");
insert into dp_ecommerce (nome,preco,marca,cor,fornecedor) value ("headset",230.00,"dragon","preto","kabum");
insert into dp_ecommerce (nome,preco,marca,cor,fornecedor) value ("monitor", 300.00,"dragon","azul","kabum");
insert into dp_ecommerce (nome,preco,marca,cor,fornecedor) value ("placadevideo",280.00,"dragon","cinza","kabum");

select * from dp_ecommerce;

select * from dp_ecommerce where preco>500.00;
select * from dp_ecommerce where preco<500.00;

update dp_ecommerce set preco = 350.00 where id=4;