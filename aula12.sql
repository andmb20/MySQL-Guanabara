select * from cursos where nome ='PHP';
select * from cursos where nome like 'p%' order by ano;
select * from cursos where nome like '%a' order by idcurso;
select * from cursos where nome like '%a%' order by idcurso;
select * from cursos where nome like '%a' order by idcurso;
select * from cursos where nome not like '%a%' order by idcurso;
select * from cursos where nome like 'p__t%';
select distinct nacionalidade from gafanhotos order by nacionalidade;
select distinct carga from cursos order by carga;
select count(*) from cursos;
select count(*) from cursos where carga >40;
select max(carga) from cursos;
select * from cursos where ano = '2016';
select nome, min(totaulas) from cursos where ano = '2016';

SELECT nome, totaulas
FROM cursos
WHERE ano = '2016'
  AND totaulas = (
      SELECT MIN(totaulas)
      FROM cursos
      WHERE ano = '2016'
  );

select sum(totaulas) from cursos where ano ='2016';
select avg(totaulas) from cursos;
select avg(totaulas) from cursos where ano ='2016';

select * from gafanhotos;
select nome from gafanhotos where sexo = 'F';
select * from gafanhotos where nascimento between '1999-12-31' and '2016-01-01';
select * from gafanhotos where sexo = 'M' and profissao = 'Programador';
select * from gafanhotos where nacionalidade = 'Brasil' and sexo = 'F' and nome like 'J%';
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < 100;
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';
select avg(peso) from gafanhotos;
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1989-12-31' and '2001-01-01';
select count(*) from gafanhotos where sexo = 'F' and altura > 1.9;
select * from gafanhotos where sexo = 'M';