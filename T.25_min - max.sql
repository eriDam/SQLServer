/*
Tutoriales SQL Server#25 |  min - max
-Funciona para datos de tipo n�merico y tambi�n para cadenas

Sum --> Suma

Count --> Cuenta

Min --> m�nimo

Max --> m�ximo
*/

select * from usuarios

--Obtiene edad m�nima
Select Min(edad) from usuarios

--Obtiene edad max cuando sean mujeres
Select Max(edad) from usuarios
where sexo='F'  

