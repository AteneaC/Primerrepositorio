--Consulta: crea 6 usuarios nuevos
insert into usuarios (id, nombre, apellido, creado_en, actualizado_en)
values 
(1,"Charlie","Day",now(),now()),
(2,"Dennis","Reynolds",now(),now()),
(3,"Dee","Reynolds",now(),now()),
(4,"Frank","Reynolds",now(),now()),
(5,"Ronald","MacDonald",now(),now()),
(6,"Bill","Ponderosa",now(),now());

--Consulta: haz que el usuario 1 sea amigo del usuario 2, 4 y 6
INSERT INTO amistades (usuarios_id,amigo_id)
VALUES 
(1,2),
(1,4),
(1,6);

--Consulta: haz que el usuario 2 sea amigo del usuario 1, 3 y 5
INSERT INTO amistades (usuarios_id,amigo_id)
VALUES
(2,1),
(2,3),
(2,5);

--Consulta: haz que el usuario 3 sea amigo del usuario 2 y 5
INSERT INTO amistades (usuarios_id,amigo_id)
VALUES
(3,2),
(3,5);

--Consulta: haz que el usuario 4 sea amigo del usuario 3
INSERT INTO amistades (usuarios_id,amigo_id)
VALUES
(4,3);

--Consulta: haz que el usuario 5 sea amigo del usuario 1 y 6
INSERT INTO amistades (usuarios_id,amigo_id)
VALUES
(5,1),
(5,6);

--Consulta: haz que el usuario 6 sea amigo del usuario 2 y 3
INSERT INTO amistades (usuarios_id,amigo_id)
VALUES
(6,2),
(6,3);

--Consulta: muestra las relaciones creadas como se muestra en la imagen de arriba
select usuarios.nombre, usuarios.apellido,  usuarios2.nombre as amigo_nombre, usuarios2.apellido as amigo_apellido
from usuarios
join amistades on usuarios.id = amistades.usuario_id
left join usuarios as usuarios2 on usuarios2.id = amistades.usuario_id


-- SOLUCIONES:

INSERT INTO users (first_name, last_name)
VALUES ("Charlie","Day"),("Dennis","Reynolds"),("Dee","Reynolds"),("Frank","Reynolds"),("Ronald","MacDonald"),("Bill","Ponderosa");

INSERT INTO friendships (user_id,friend_id)
VALUES (1,2),(1,4),(1,6),(2,1),(2,3),(2,5),(3,2),(3,5),(4,3),(5,1),(5,6),(6,2),(6,3);

SELECT users.first_name, users.last_name, users2.first_name as friend_first_name, users2.last_name as friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id;


SELECT users2.first_name as first_name, users2.last_name as last_name, users.first_name as friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
WHERE users.id = 1;

SELECT COUNT(*) as num_of_friendships from friendships;



SELECT user_id, users.first_name, users.last_name, count(user_id) as num_of_friends from friendships
JOIN users ON users.id = friendships.user_id
GROUP BY user_id
ORDER BY num_of_friends DESC
LIMIT 1;

SELECT users2.first_name as first_name, users2.last_name as last_name, users.first_name as friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
WHERE users.id = 3
ORDER BY first_name;
