DROP TABLE IF EXISTS item_pedido;
DROP TABLE IF EXISTS pedido;	
DROP TABLE IF EXISTS cliente;	
DROP TABLE IF EXISTS produto;
DROP TABLE IF EXISTS departamento;	
DROP TABLE IF EXISTS funcionario;	
create table cliente(
  id_cliente int not null primary key auto_increment,
  nome varchar(80) not null,
  uf char(2) not null
);

create table pedido(
  id_pedido int not null primary key auto_increment,
  valor decimal(10,2) not null,
  id_cliente int,
  foreign key (id_cliente) references cliente(id_cliente)
);
	
create table produto(
 id_produto int not null primary key auto_increment,
 nome varchar (100) not null,
 preco decimal (10,2) not null,
 categoria varchar(40) not null,
 estoque int not null
 );

create table item_pedido(
	id_produto int,
	id_pedido int,
	foreign key (id_produto) references produto(id_produto),
	foreign key (id_pedido) references pedido(id_pedido),
	primary key (id_produto,id_pedido)
);
insert into cliente (id_cliente,nome,uf) values
   (1001,'Astrogildo','RJ'),
   (1002,'Pedro','SC'),
   (1003,'Abner','SP'),
   (1004,'Abelardo','RJ'),
   (1005,'Josicleide','RJ');

insert into pedido (valor, id_cliente) values
	(500.50,1001),
	(300.50,1002),
	(190.50,1003),
	(200.50,1004);

insert into produto (nome, preco, categoria,estoque) values 
	('HD Ssd 480gb',400,'ssd',10),
	('HD Ssd 240gb',100.50,'ssd',15),
	('HD Ssd 100gb',200,'ssd',20),
	('Pen Drive 32GB',90,'pendrive',50),
	('Pen Drive 128GB',200.5,'pendrive',50);	
	
insert	into item_pedido (id_pedido, id_produto) values 
	(1,1),
	(1,2),
	(2,2),
	(2,3),
	(3,2),
	(3,4),
	(4,5);

create table departamento(
 id_departamento int not null primary key auto_increment,
 nome varchar(40) 
);
insert into departamento (nome) values('RH'),('TI');


create table funcionario(
 id_funcionario int not null primary key auto_increment,
 nome varchar (100) not null,
 salario decimal (10,2) not null,
 departamento varchar(40) not null,
 dependente int,
 dt_nascimento date not null
);
insert into funcionario (nome, salario, departamento,dt_nascimento) 
values ('Astrogildo',2000,'RH','1971-02-17'),
		('Anacleto',3500,'COMERCIAL','1979-09-25');
insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) values		
		('Irene',2000,'RH','1978-05-27',2),
		('Perla',2200,'RH','1978-09-01',1),
		('Manuela',5500,'TI','1988-03-07',1),		
		('Roberta',4500,'TI','1987-09-12',2),
		('Ramon',4200,'TI','1988-12-22',3),
		('Astolfo',7800,'DIRETORIA','1979-03-15',3),
		('Mariana',7800,'DIRETORIA','1975-03-15',4),
		('Georgina',3600,'COMERCIAL','1979-07-22',2);

		
