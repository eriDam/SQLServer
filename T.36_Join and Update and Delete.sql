/*
Tutoriales SQL Server#36| Join and Update and Delete
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
 
--Actualizar el nombre de los alumnos cuadno la carrera sea 12, hay
--que hacer un join para unir carreras a alumno, así cambiamos en las dos tablas
 UPDATE ALUMNO SET NOMBRE = 'Cambio'
 FROM ALUMNO join CARRERA
 on ALUMNO.ID_CARRERA=CARRERA.ID_CARRERA
 WHERE CARRERA.ID_CARRERA = 12
 

 DELETE ALUMNO SET NOMBRE = 'Cambio'
 FROM ALUMNO join CARRERA
 on ALUMNO.ID_CARRERA=CARRERA.ID_CARRERA
 WHERE CARRERA.ID_CARRERA = 12