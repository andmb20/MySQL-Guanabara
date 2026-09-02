use cadastro;
describe pessoas;
alter table pessoas add column profissao varchar(20);
alter table pessoas drop profissao;
alter table pessoas add profissao varchar(20) after nome;
alter table pessoas modify profissao varchar(30);

create table if not exists curso (
nome varchar(20) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2026'
);
alter table curso rename to cursos;
describe cursos;
alter table cursos add id int first;
alter table cursos add primary key (id);
alter table cursos modify id int not null auto_increment;

create table teste(
id int auto_increment,
nome varchar(20),
idade int,
primary key (id)
);
insert into teste value 
(id, 'Pedro', '22'),
(id, 'Maria', '21'),
(id, 'Joana', '20')
;
describe teste;
select * from cursos;
drop table teste;