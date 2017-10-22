/*
Tutoriales SQL Server#37| Alter table
-  

*/

Select * from alumno

Select * from Carrera

Select * from Datos

--AÑADIR UNA COLUMNA, CON LOS VALORES A NULL
ALTER TABLE Carrera
add Cupo_limitado int;

--ELIMINAR COLUMNA
ALTER TABLE Carrera
drop column Cupo_limitado

 
