/*
Tutoriales SQL Server#33 y 34| Left Join & Right Join
-  

*/

Select * from alumno

Select * from Carrera

Select * from Datos

--Creo un nuevo registro en Alumnos, 5 KARINA PEREZ 12
--Si realizo la consulta no me saca este registro por que no tiene relación con Datos

select  * from Datos d
INNER JOIN ALUMNO a on d.ID_ALUMNO = a.ID_ALUMNO
 
--Unir la tabla datos con alumnos con left join mostrará todos los datos 
--aunque no haya relación, los datos que no tengan relacion en la otra tabla salen a NULL
--Los registros  los obtengo de la tabla izquierda
 select  * from ALUMNO A
left JOIN  Datos D on A.ID_ALUMNO = D.ID_ALUMNO

--Unir la tabla datos con alumnos con right join mostrará todos los datos 
--aunque no haya relación, los datos que no tengan relacion en la otra tabla salen a NULL
--Los registros  los obtengo de la tabla derecha
 select  * from Datos D
RIGHT JOIN  ALUMNO A on D.ID_ALUMNO = A.ID_ALUMNO