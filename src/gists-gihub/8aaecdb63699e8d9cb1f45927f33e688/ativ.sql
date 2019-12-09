create database aluno_usavimmicrosoftfag;
use aluno_usavimmicrosoftfag;

create table dono (
	id int, # PK
    nome varchar(100),
    endereco varchar(100)
);

create table  camera (
	id int, #PK
    perimetro int
);

create table veiculo (
	reg varchar(8), # PK
    dono int # FK
);	

create table imagem (
	camera int, # PK
	data_e_hora datetime, # PK
    reg varchar(8), # FK 
);

create table permissao (
	reg varchar(8) # PK FK

);

