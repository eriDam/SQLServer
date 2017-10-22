/*
Tutoriales SQL Server #07 | WHERE
Es una plabara reservada que nos sirve para condicionar cierta operación de consulta
Muetsra todos los datos mientras lo que condicione se cumpla.

 
*/
--Añado un usuario mas llamado davis, para que hayan dos con el mismo nombre
insert into usuarios values(7,'david',33)

--2 registros cumplen la condición
SELECT * FROM usuarios
WHERE nombre= 'david'


SELECT id_usuario,nombre FROM usuarios


 
 

