create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
id_gafanhoto int,
id_curso int,
primary key(id)
);
desc gafanhoto_assiste_curso;
select * from gafanhoto_assiste_curso;

alter table gafanhoto_assiste_curso add foreign key(id_gafanhoto) references gafanhotos(id);
alter table gafanhoto_assiste_curso add foreign key(id_curso) references cursos(idcurso);

insert into gafanhoto_assiste_curso value
(default, '2026-08-25', '1','1');
insert into gafanhoto_assiste_curso value
(default, '2026-11-25', '4','10'),
(default, '2025-07-01', '3','9'),
(default, '2025-06-06', '1','15'),
(default, '2024-05-01', '2','12'),
(default, '2023-04-13', '1','21'),
(default, '2025-03-12', '12','11'),
(default, '2026-02-20', '1','8'),
(default, '2025-02-23', '12','7'),
(default, '2025-01-14', '3','25'),
(default, '2026-03-12', '5','19')
;

select g.nome, ga.id_curso, c.nome from gafanhotos as g 
join gafanhoto_assiste_curso as ga on g.id = ga.id_gafanhoto 
join cursos as c on c.idcurso = ga.id_curso order by g.nome;