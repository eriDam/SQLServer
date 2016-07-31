/*
Tutoriales SQL Server#18 y T.19| Order by
 
 
*/
 
 select titulo from libros
order by titulo;

--Ordenar de forma descendente, asc es para ascendente y es por defecto
 select * from libros
order by precio_venta desc;

--Ordenar un campo ascendente y otro desc 
 select * from libros
order by titulo desc , precio_venta asc;