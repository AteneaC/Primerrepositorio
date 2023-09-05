
--crea 5 usuarios diferentes: Jane Austen, Emily Dickinson, Fyodor Dostoevsky, William Shakespeare, Lau Tzu
insert into usuarios (id,nombre,creado_en, actualizado_en)
values 
('1','Jane Austen',now(), now()),
('2','Emily Dickinson',now(), now()),
('3','Fyodor Dostoevsky',now(), now()),
('4','William Shakespeare',now(), now()),
('5',' Lau Tzu',now(), now());

--crea 5 libros con los siguientes nombres: C Sharp, Java, Python, PHP, Ruby
insert into libros (id,titulo, numero_paginas,creado_en, actualizado_en)
values 
('1','C Sharp','100',now(), now()),
('2','Java','120',now(), now()),
('3','Python','130',now(), now()),
('4','PHP','140',now(), now()),
('5','Ruby','150',now(), now());

--cambia el nombre del libro de C Sharp a C#
UPDATE libros
SET titulo = 'C#'
where id = 1;

--cambia el nombre del cuarto usuario a Bill
UPDATE usuarios
SET nombre = 'Bill'
where id = 4;

--haz que el primer usuario marque como favorito los 2 primeros libros
insert into favoritos(usuario_id,libro_id)
values
(1,1),
(1,2);

--haz que el segundo usuario marque como favorito los primeros 3 libros
insert into favoritos(usuario_id,libro_id)
values
(2,1),
(2,2),
(2,3);

--haz que el tercer usuario marque como favorito los 4 primeros libros
insert into favoritos(usuario_id,libro_id)
values
(3,1),
(3,2),
(3,3),
(3,4);

--Haz que el cuarto usuario marque como favorito todos los libros
insert into favoritos(usuario_id,libro_id)
values
(4,1),
(4,2),
(4,3),
(4,4),
(4,5);

--recupera todos los usuarios que marcaron como favorito el tercer libro
select *
from favoritos
where libro_id = 3;

--Consulta: elimina el primer usuario de los favoritos del tercer libro
delete from favoritos
where libro_id = 3
and usuario_id = 2;

--Haz que el quinto usuario marque como favorito el segundo libro
insert into favoritos(usuario_id,libro_id)
values
(5,2);

--Encuentra todos los libros que el tercer usuario marcó como favoritos
select * 
from usuarios
join favoritos on usuario_id = favoritos.usuario_id
join libros on libro_id = favoritos.libro_id
where usuario_id = 3;

--Consulta: encuentra todos los usuarios que marcaron como favorito el quinto libro
select * 
from libros
join favoritos on libro_id = favoritos.libro_id
join usuarios on usuario_id = favoritos.usuario_id
WHERE libro_id = 5;