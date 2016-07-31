/*
Tutoriales SQL Server#22 |  Like Not Like
Se usan especificamente para cadenas
*/
  
--Muestra todos los datos cuyo nombre contenga
select * from libros 
where  nombre like '%roja%';

select * from libros 
where  nombre like 'roja%';

select * from libros 
where  nombre like '%roja';


select * from libros 
where  nombre not like '%2000%';

select * from libros 
where not nombre like '%2000%';

 