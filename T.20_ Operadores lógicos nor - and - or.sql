/*
Tutoriales SQL Server#20 |  Operadores lógicos nor - and - or
Ejecutamos script T.20 para crear Base de datos
os operadores sirven para poder unir condiciones
not -->  != -->  negación
and -->  && --> y
or -->   || --> o
*/
 
use libreriaT20

select * from libros
where not id_libro = 1; --excepción del id 1

select * from libros
where  id_libro = 1 and id_libro=2; --no sale nada por que cada libro tiene 1 id y le pedidos 2

--,hay que usar or
select * from libros
where  id_libro = 1 or id_libro=2;  

--todas las condiciones unidas por el and deben cumplirse
select * from libros 
where precio_venta =115 and precio_compra = 95.23

 --combinar operadores
 select * from libros where id_libro=1 or nombre = 'aura';