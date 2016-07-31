/*
Tutoriales SQL Server#26 |  Having 
- Where filtro de registros individuales
- Having, filtro similar pero por grupo de registros
*/

select * from usuarios

--Buscar todas los usuarios con sexo femenino
select * from usuarios
where sexo = 'F';

--Para poder usar el having hay que usar operadores de agrupamientos (Sum, Count,Min,Max) 
--y un group by 
select nombre, avg(edad) from usuarios 
where sexo = 'F'
group by nombre
having avg(edad) >20 ;
 
 
