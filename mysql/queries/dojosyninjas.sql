--Consulta: crea 3 dojos nuevos
insert into dojos (id,nombre,creado_en, actualizado_en)
values ('1','dojo1',now(),now()),
('2','dojo2',now(),now()),
('3','dojo3',now(),now());

--Consulta: elimina los 3 dojos que acabas de crear
delete
from dojos
where id = 1;

delete
from dojos
where id = 2;

delete
from dojos
where id = 3;

--Consulta: crea 3 dojos nuevos
insert into dojos (id,nombre,creado_en, actualizado_en)
values ('1','dojo1',now(),now()),
('2','dojo2',now(),now()),
('3','dojo3',now(),now());

--Consulta: crea 3 ninjas que pertenezcan al primer dojo
insert into ninjas (id,nombre,apellido, edad,creado_en, actualizado_en, dojos_id)
values ('1','ninjas1','napellido1', '11',now(),now(),1),
('2','ninjas2','napellido2', '12',now(),now(),1),
('3','ninjas3','napellido3', '13',now(),now(),1);

--Consulta: crea 3 ninjas que pertenezcan al segundo dojo
insert into ninjas (id,nombre,apellido, edad,creado_en, actualizado_en, dojos_id)
values ('4','ninjas4','napellido4', '14',now(),now(),2),
('5','ninjas5','napellido5', '15',now(),now(),2),
('6','ninjas6','napellido6', '16',now(),now(),2);

--Consulta: crea 3 ninjas que pertenezcan al tercer dojo
insert into ninjas (id,nombre,apellido, edad,creado_en, actualizado_en, dojos_id)
values ('7','ninjas7','napellido7', '17',now(),now(),3),
('8','ninjas8','napellido8', '18',now(),now(),3),
('9','ninjas9','napellido9', '19',now(),now(),3);

--Consulta: recupera todos los ninjas del primer dojo
select *
from ninjas
where dojos_id = 1;

--Consulta: recupera todos los ninjas del último dojo
select *
from ninjas
where dojos_id = 3;

--Consulta: recupera el dojo del último ninja
select n.nombre,n.apellido,n.dojos_id , d.nombre
from ninjas as n 
left join dojos as d 
on n.dojos_id = d.id
where n.id= 9;


