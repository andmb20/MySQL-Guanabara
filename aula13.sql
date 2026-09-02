select * from cursos;
select carga, count(nome) from cursos group by carga;
select totaulas from cursos;
select totaulas from cursos order by totaulas;
select distinct totaulas from cursos order by totaulas;
select totaulas, count(nome) from cursos group by totaulas order by totaulas;
select carga, count(nome) from cursos where totaulas = 30 group by carga;
select * from cursos where totaulas = 30;
select ano, count(*) from cursos group by ano order by count(*) desc;
select ano, count(*) from cursos group by ano having count(ano) >=5 order by count(*) desc;

select avg(carga) from cursos;
select carga, count(*) from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos) ;

Exercícios;
select profissao, count(*) from gafanhotos group by profissao;
select sexo, count(*) from gafanhotos where nascimento > '2005-01-01' group by sexo;
select nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil' group by nacionalidade having count(*) > 3;
select altura, count(*) from gafanhotos where peso > 100 group by altura having altura > (select avg(altura) from gafanhotos);

select carga, count(*) from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos);