create table funcionario(
 id_funcionario int not null primary key auto_increment,
 nome varchar (100) not null,
 salario decimal (10,2) not null,
 departamento varchar(40) not null,
 dependente int,
 dt_nascimento date not null
);
insert into funcionario (nome, salario, departamento,dt_nascimento) 
values ('Astrogildo',2000,'RH','1971-02-17');
insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Irene',2000,'RH','1978-05-27',2);
insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Perla',2200,'RH','1978-09-01',1);

insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Manuela',5500,'TI','1988-03-07',1);
insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Roberta',4500,'TI','1987-09-12',2);
insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Ramon',4200.30,'TI','1988-12-22',3);

insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Astolfo',7800.55,'DIRETORIA','1979-03-15',3);
insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Mariana',7800.55,'DIRETORIA','1975-03-15',4);

insert into funcionario (nome, salario, departamento,dt_nascimento) 
values ('Anacleto',3500,'COMERCIAL','1979-09-25');
insert into funcionario (nome, salario, departamento,dt_nascimento,dependente) 
values ('Mariana',3600,'COMERCIAL','1979-07-22',2);
