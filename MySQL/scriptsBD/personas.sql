create schema if not exists personas;
use personas;

create table persona (
	id_persona int not null primary key,
    nombre varchar(20)
);

create table comida_favorita (
	id_comida_favorita int not null primary key,
    nombre varchar(30),
    id_persona int not null,
    foreign key (id_persona) references persona(id_persona)
);

insert into persona values (1,'Belen');
insert into persona values (2,'Nahuel');
insert into persona values (3,'Flavia');
insert into persona values (4,'Agustin');
insert into comida_favorita values (1,'Paella',1);
insert into comida_favorita values (2,'Omelette',2);
insert into comida_favorita values (3,'Shawarma',3);
insert into comida_favorita values (4,'Milanesas con puré',4);