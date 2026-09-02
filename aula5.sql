use cadastro;
insert into pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade)
values ('1', 'Godofredo', '1984-01-02', 'M', '78.50', '1.83', 'Brasil');

insert into pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade)
values (default, 'Adalgiza', '1965-08-12', 'F', '68.50', '1.62', default);

insert into pessoas
values (default, 'Dagoberto', '1972-10-09', 'M', '102', '1.89', default);

insert into pessoas values 
(default, 'Diana', '1997-10-09', 'F', '58.7', '1.69', 'Austria'),
(default, 'Josh', '1984-10-09', 'M', '83.30', '1.73', 'Dinamarca'),
(default, 'Ana', '1996-10-09', 'F', '54.2', '1.55', 'Argentina');

select * from pessoas;