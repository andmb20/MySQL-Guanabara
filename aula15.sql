use cadastro;
desc gafanhotos;
alter table gafanhotos add column cursopreferido int;
alter table gafanhotos add foreign key (cursopreferido) references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';
delete from cursos where idcurso = '6';
select * from gafanhotos where cursopreferido = '6';
delete from cursos where idcurso = '29';

select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;

select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos 
inner join cursos on cursos.idcurso = gafanhotos.cursopreferido;

select g.nome, c.nome, c. ano from gafanhotos as g 
left outer join cursos as c on c.idcurso = g.cursopreferido;