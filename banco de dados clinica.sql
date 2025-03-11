-- ex01 --
create database clinica;
use clinica;
-- ex02 --
-- paciente, ambulatorio, medico, funcionario, consulta--
create table paciente;
create table ambulatorio(
nroa int primary key,
andar numeric(3) not null,
capacidade  smallint
);
show tables;
create table medico(
codm int primary key,
nome varchar(40)not null,
idade smallint not null,
especialidade char(20),
cpf numeric(11)unique,
cidade varchar(30),
nroa int,
foreign key(nroa) references ambulatorio(nroa)
);

create table paciente(
codp int primary key,
nome varchar(40) not null,
idade smallint not null,
cpf numeric(11) unique,
cidade varchar(30),
doenca varchar(40)
);
create table funcionario(
codf int primary key,
nome varchar(40)not null,
idade smallint not null,
cpf numeric(11) unique,
cidade varchar(30),
salario numeric (10),
cargo varchar(20),
nroa int ,
foreign key(nroa) references ambulator(nroa)
);

create table consulta(
codm int, 
codp int,
data_consulta date,
hora_consulta time,
primary key (codm, codp, data_consulta, hora_consulta),
foreign key(codm) references medico (codm),
foreign key (codp) references paciente(codp));
-- ex 03 --

alter  table funcionario add column nroa int; 

-- ex 04 --
create index idx_medico_cpf on medico(cpf);
create index idx_paciente_doenca on pacienta(doenca);
insert into medico(codm,nome,idade,especialidade,cpf,cidade,nroa)values();

-- ex 05 --
drop index idx_paciente_doenca on paciente;
-- ex 06 --
alter table funcionario drop column cargo;
alter table funcionario drop column nroa;
-- paciente, ambulatorio, medico, funcionario, consulta--
insert into paciente(codp,nome,idade,cpf,cidade,doenca)values(001,'Pedro',23,46677898,'São Paulo','turbeculose');