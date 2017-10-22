/*
Tutoriales SQL Server#31 y 32 |  Inner Join
- Consulta de unión de diferentes tablas.
- El INNER JOIN es otro tipo de composición de tablas, permite emparejar 
 filas de distintas tablas de forma más eficiente que con el producto 
 cartesiano cuando una de las columnas de emparejamiento está indexada.
*/

Select * from alumno

Select * from Carrera

Select * from Datos

--Unir la tabla datos con alumnos y la tabla carrera con Alumnos
select  * from Datos
--Unimos datos con Alumno 
JOIN Alumno on Datos.ID_ALUMNO = Alumno.ID_ALUMNO
--Unimos Carrera con Alumno, si quito la relación de as tablas puedo modificar 
--los id_carrera
JOIN Carrera on Carrera.Id_Carrera = Alumno.Id_Carrera
where alumno.ID_CARRERA = 12

--Unir con tabla que no tiene relación, saca los datos  por que son similares van del 1 al 3
--pero si cambiamos los id de Id_carrera veremos y el id_carrera de la tabla alumno
--la consulta no devuelve nada
--Para modificar la tabla quitar la relación de las tablas  
--UPDATE Carrera SET ID_CARRERA= 12 where ID_carrera=1 
select * from Datos
--Unimos datos con Alumno con un campo que no tiene relación,
JOIN Alumno on Datos.ID_ALUMNO = Alumno.id_carrera
--Unimos Carrera con Alumno, 
JOIN Carrera on Carrera.Id_Carrera = Alumno.Id_Carrera


--Obtener algunos campos de cada tabla
select  Alumno.nombre, Datos.email, Carrera.carrera from Datos
JOIN Alumno on Datos.Id_alumno = Alumno.id_alumno
JOIN Carrera on Carrera.Id_Carrera = Alumno.Id_Carrera

