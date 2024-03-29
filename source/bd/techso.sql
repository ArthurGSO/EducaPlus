drop database TechSolutions;

create database TechSolutions;

use TechSolutions;

create table tbUsuarios(
	cod_usuario int not null auto_increment primary key,
	nome_usuario varchar(30) not null,
	email_usuario varchar(50) not null,
	celular char(11) not null,
	senha varchar(255) not null,
	data_nasc date,
	data_cadastro datetime,
	login datetime,
	dt_alteracao datetime
);

create table tbAdms(
	cod_adm int not null auto_increment primary key,
	nome_adm varchar (60),
	cargo varchar (60),
	cod_usuario int not null,
	foreign key (cod_usuario) references tbUsuarios(cod_usuario)
);

create table tbTestes(
	cod_tst int not null auto_increment primary key,
	questoes varchar(500) not null,
	tipo_vestibular varchar(50),
	ano date,
	materia_vestibular varchar(50),
	pontos int default 0
);

create table tbPerfis(
	cod_perf int not null auto_increment primary key,
	pontuacao int not null default 0,
	cod_tst int not null,
	cod_usuario int not null,
	cod_adm int not null,
	cod_servico int not null,
	cod_prova int not null,
	foreign key (cod_tst) references tbTestes(cod_tst),
	foreign key (cod_usuario) references tbUsuarios(cod_usuario),
	foreign key (cod_adm) references tbAdms(cod_adm)
);

CREATE TABLE tbQuestions (
	cod_question int not null auto_increment primary key,
	text_question text,
	option_a varchar(255),
	option_b varchar(255),
	option_c varchar(255),
	option_d varchar(255),
	option_e varchar(255),
	correct_option char(1),
	exam_year int
);

CREATE TABLE tbImagens (
    cod_image int not null auto_increment primary key,
    cod_question int not null,
    image_data longblob,
    foreign key (cod_question) references tbQuestions(cod_question)
);


--foreign key (cod_servico) references tbServicos(cod_servico));

--create table tbServicos(
--cod_servico int not null auto_increment,
--tipo_ervico varchar(50),
--descricao varchar(60),
--valor double,
--primary key (cod_servico));
--
--create table tbPagamentos(
--cod_pag int not null auto_increment,
--metodo varchar(30) not null,
--saldo float,
--cod_usuario int not null,
--cod_servico int not null,
--primary key (cod_pag),
--foreign key (cod_usuario) references tbUsuarios(cod_usuario),
--foreign key (cod_servico) references tbServicos(cod_servico));