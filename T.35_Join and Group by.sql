/*
Tutoriales SQL Server#35| Join and Group by
-  

*/

Select * from alumno

Select * from Carrera

Select * from Datos

 
select  a.NOMBRE, c.CARRERA from Datos d
INNER JOIN ALUMNO a on d.ID_ALUMNO = a.ID_ALUMNO
LEFT JOIN Carrera c on c.ID_CARRERA = a.ID_CARRERA
where edad > 18
group by a.NOMBRE, c.CARRERA
 
--Unir la tabla datos con alumnos con left join mostrará todos los datos 
--aunque no haya relación, los datos que no tengan relacion en la otra tabla salen a NULL
--Los registros  los obtengo de la tabla izquierda
 select  * from ALUMNO A
LEFT JOIN  Datos D on A.ID_ALUMNO = D.ID_ALUMNO

--Unir la tabla datos con alumnos con right join mostrará todos los datos 
--aunque no haya relación, los datos que no tengan relacion en la otra tabla salen a NULL
--Los registros  los obtengo de la tabla derecha
 select  * from Datos D
RIGHT JOIN  ALUMNO A on D.ID_ALUMNO = A.ID_ALUMNO