CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE  tb_categorias (
id bigint auto_increment,
tipo varchar(255),
tamanho varchar(255),
primary key (id)
); 

insert into tb_categorias(tipo,tamanho) value ("doce","pequena");
insert into tb_categorias(tipo,tamanho) value ("salgada","grande");
insert into tb_categorias(tipo,tamanho) value ("agridoce","media");
insert into tb_categorias(tipo,tamanho) value ("Esfihadoce","pequena");
insert into tb_categorias(tipo,tamanho) value ("EsfihaSalgada","pequena");

CREATE TABLE tb_pizzas (
id bigint auto_increment,
sabor varchar(255),
borda varchar(255),
preco decimal(8,2),
primary key (id)
);

insert into tb_pizzas(sabor,borda,preco) value ("CalabresaQueijo","Queijo",52.00);
insert into tb_pizzas(sabor,borda,preco) value ("Queijo","catupiry",60.00);
insert into tb_pizzas(sabor,borda,preco) value ("QueijoBacon","MolhoChurrasco",75.00);
insert into tb_pizzas(sabor,borda,preco) value ("Escarola","Queijo",25.00);
insert into tb_pizzas(sabor,borda,preco) value ("QueijoGoiabada","chocolate",27.00);
insert into tb_pizzas(sabor,borda,preco) value ("GoiabadaFrango","LeiteMoça",30.00);
insert into tb_pizzas(sabor,borda,preco) value ("MMS","Cholocate",35.00);
insert into tb_pizzas(sabor,borda,preco) value ("FrangoCrisp","Catupiry",45.00);

select * from tb_pizzas;
select * from tb_pizzas where preco < 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;
select * from tb_pizzas where sabor like "%m%";

alter table tb_pizzas add categoria_id bigint;
alter table tb_pizzas add constraint fk_pizzas_categoria foreign key (categoria_id) references tb_pizzas(id);


select * from tb_pizzas; 
select * from tb_categorias;


update tb_pizzas set categoria_id = 2 where id = 1;
update tb_pizzas set categoria_id = 5 where id = 2;
update tb_pizzas set categoria_id = 2 where id = 3;
update tb_pizzas set categoria_id = 2 where id =4 ;
update tb_pizzas set categoria_id = 3 where id = 5 ;
update tb_pizzas set categoria_id = 3 where id = 6;
update tb_pizzas set categoria_id = 1 where id = 7;
update tb_pizzas set categoria_id = 2  where id = 8;

select tipo, tamanho, sabor, borda, preco, categoria_id from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;
select tipo, tamanho, sabor, borda, preco, categoria_id from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id where categoria_id=1;


