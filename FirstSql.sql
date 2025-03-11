
create database clinicaRafael;
use clinicaRafael;

create table pacientes(
	id int, 
	nome varchar(100),
    primary key(id)

);
show tables;
select * from pacientes;
drop table pacientes;
insert into pacientes(id,nome)value(1,'Rafael Moreira'), (2,'Gustavo afonso'),(3,'pedrao');
use clinicaRafael