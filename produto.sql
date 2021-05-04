create table produto(
 id_prod int not null primary key auto_increment,
 nome varchar (100) not null,
 preco decimal (10,2) not null,
 categoria varchar(40) not null,
 estoque int not null,
 dt_criacao date
);
insert into produto (nome, preco, categoria,estoque, dt_criacao) values 
('HD Ssd 480gb',309.50,'ssd',10, null),
('HD Ssd 240gb',188.00,'ssd',15, null),
('HD Ssd 100gb',135.00,'ssd',20,'2021-04-26'),
('Pen Drive 32GB',24.90,'pendrive',50,'2021-04-27'),
('Pen Drive 128GB',109.53,'pendrive',50,'2021-04-27'),
('Mouse Gamer 12.000 DPI ',159.99,'mouse',7,'2021-04-28'),
('Mouse Gamer Pro M7 Rgb ',51.24 ,'mouse',9,'2021-04-28'),
('Teclado Semi Mecânico Gamer Profissional USB Abnt2 Iluminado Led Rgb',41.90 ,'teclado',12,'2021-04-29'),
('Teclado Gamer Cyclosa + Mouse Gamer Abyssus 1.800 DPI',123.67 ,'teclado',4,'2021-04-29'),
('Fone De Ouvido Headset Gamer P2 Para Ps4 Xbox One Notebook Macbook Com Microfone',79.29 ,'fone',25,'2021-04-29'); 
 
 
select * from produto;
