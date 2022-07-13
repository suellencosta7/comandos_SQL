create database casa; -- Criação do B.D

create table comodos( -- Criar tabela

  id int not null auto_increment,     -- Primary key
  indent_comod varchar(15),           -- ORDEM: Atributo, tipo primitivo, tamanho
  Numero_pessoas int,
  Descricao varchar(50),
  primary key(id)                     -- Toda table deve conter o seu id para melhor integridade

);

describe comodos;                     -- Descrever a tabela sem dados inseridos


insert into comodos values            -- Inserindo dados na tabela. OBS: Na ordem que as colunas foram criadas
(default,'Quarto','2','1 guarda roupa,2 camas,lilas');

select* from comodos;                 -- Mostra dados inseridos na tabela

create table membros(
	id int not null auto_increment,
	nome varchar(20) not null,
	sexo enum('M,F'),
    
	primary key(id)
);

insert into membros values            -- Inserindo mais de um dado de uma vez na tabela membros.
(default,'Maria','F'),(default,'Jõao','M'),(default,'Nina','F'),(default,'Jorge','M'); 


			-- Criando relação entre elas através da Foreign Key (Chave estrangeira)

use casa;  			    						 -- Abrir o Banco de dados 
alter table membros add column pertence int;					 -- A tabela dominante recebe uma coluna que será o campo para F.Key
alter table membros add foreign key (pertence) references comodos(id);		 -- Chave inserida
update membros  set pertence = '1' where id = '1';				 
select nome,pertence from membros;						 -- Veja como ficou
