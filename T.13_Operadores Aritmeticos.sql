/*
Tutoriales SQL Server#13| Operadores aritmeticos
 
-Crear Bd Libreria
Script libreria con inserts.

Operaciones 

+  -  /  *  %

*/

Select * from libros;

select precio_venta from libros;

--Sacar las ganancias de cada libro o de 1
select nombre,precio_venta,precio_compra, precio_venta - precio_compra as Margen from libros
where id_libro=1

--Presupuesto   precio_venta* cantidad, sin tener el campo cantidad
select nombre,precio_venta,  precio_venta * 10 as PrecioTotal from libros
where nombre='Programación en Java'

/*Actualización a partir de una operación, incrementamos el precio de venta en un 10%*/
Update libros set precio_venta= precio_venta + (precio_venta * 0.1) 
where id_libro=1

Select * from libros