use escola;

show tables;

desc aluno;

# data = ano- mes- dia

insert into aluno value (default,'Samira Andrade Silva','2009-09-29','1326244539');

# null para passar o valor da tabela zerado

insert into aluno values (default, 'Ramiro Alves Fitman','1994-05-30',null),(default, 'Yiara Martins Santos','2006-03-10','78624598'); 
update aluno set cpf='6429456' where id ='3';             -- Inserir dado em determinado campo
