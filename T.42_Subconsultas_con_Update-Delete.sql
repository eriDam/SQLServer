/*
Tutoriales SQL SERVER | #42 Tutoriales SQL SERVER | # 42 - Subconsultas Update & Delete
 https://www.youtube.com/watch?v=yLv1wPpWEGc&index=41&list=PL6hPvfzEEMDaU4aiS389oXamdN8sip856

 

*/

--Hacemos un update a la tabla usuarios
Update Usuarios set tipo_usuario = 'Root' 
Where edad = any  (select Id_usuario from usuarios where edad  > 24 )

--Probamos la subconsulta sola
select Id_usuario from usuarios where edad  > 24

select * from usuarios order by edad

--Hacemos un delete a la tabla usuarios
Delete usuarios where tipo_usuario = any 
(select tipo_usuario from usuarios where edad > 24)
 