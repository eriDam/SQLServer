/*
Tutoriales SQL Server#24 |  Sum - Avg
-Ejecutamos script T.24_Empleados
Operadores que permiten realizar agrupamientos

Sum --> Suma

Count --> Cuenta

Min --> mínimo

Max --> máximo
*/

select * from usuarios

--Cuantos usuarios hay en la tabla
Select Count(id_usuario) from usuarios

--Suma sólo números
Select Sum(edad) from usuarios
where sexo='M' and edad > 18

--Cuenta
Select Count(id_usuario) from usuarios
where sexo='M' and edad < 18

--Media
select Avg(edad) from usuarios
where sexo='F' and edad > 18



 