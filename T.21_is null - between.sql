/*
Tutoriales SQL Server#21 |  is null - between
*/
 
use libreriaT20

--Muestra todos los datos cuyo nombre esté en NULL
select * from libros 
where  nombre is null;

--Muestra todos los datos cuyo nombre no esté en NULL, no 
--es recomendable, ocupa mucha memoria al ejecutar la consulta si la bd es grande
select * from libros 
where not nombre is null;

--Between (entre los valores) misma forma de hacer una consulta
Select * from libros
Where precio_venta > 200 and precio_venta < 300;

Select * from libros
Where precio_venta between 200 and 300;