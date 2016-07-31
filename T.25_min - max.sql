/*
Tutoriales SQL Server#25 |  min - max
-Funciona para datos de tipo númerico y también para cadenas

Sum --> Suma

Count --> Cuenta

Min --> mínimo

Max --> máximo
*/

select * from usuarios

--Obtiene edad mínima
Select Min(edad) from usuarios

--Obtiene edad max cuando sean mujeres
Select Max(edad) from usuarios
where sexo='F'  

