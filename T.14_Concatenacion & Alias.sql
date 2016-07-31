/*
Tutoriales SQL Server#14| Concatenacion & Alias
 
Concatenaci�n = Uni�n de 2 o + cadenas
 

*/

Select * from libros;

Select nombre from libros

--Concatenaci�n
Select  'Libro: ' +nombre + '/' + nombre  from libros
where id_libro = 1

--Alias (cambio de nombre temporal)
Select 
nombre,precio_venta as este_es_precio_de_venta, 
precio_compra as este_es_precio_de_compra
from libros