/*
Tutoriales SQL Server#23 |  Count
Se usan especificamente para contar
*/
  
--Cuenta todos los registros
select Count(*) as cantidad from libros 

--mismo result 
select Count(id_libro) as cantidad from libros

--No se cuentan los null
select Count(nombre) as cantidad from libros 
where id_libro > 10

 