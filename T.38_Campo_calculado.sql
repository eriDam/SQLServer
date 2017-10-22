/*
Tutoriales SQL Server #38  |  Campos Calculados
 https://www.youtube.com/watch?v=IY3_VP45XHk&list=PL6hPvfzEEMDaU4aiS389oXamdN8sip856&index=38

*/

Select * from Carrera
Select * from alumno
Select * from Datos

--AÑADIR UNA COLUMNA, CON LOS VALORES A NULL
ALTER TABLE Carrera
add Cupo_minimo int;

ALTER TABLE Carrera
add Cupo_limitado int;

--Añadimos un campo calculado, coge el valor de Cupo_minimo le suma 100 
-- y crea el resultado en una nueva columna.
ALTER TABLE Carrera
add Resta as (Cupo_minimo + 100)
---
ALTER TABLE Carrera
drop column Resta
ALTER TABLE Carrera
add Suma as (Cupo_limitado - 100)

 ALTER TABLE Carrera
drop column Suma

 
