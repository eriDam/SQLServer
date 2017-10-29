/*
Tutoriales SQL SERVER |  #64 Triggers[Insert]

--Estructura
-- create triggre Nombretrigger
 -- on Tabla
 -- for  insert
 --as 
 -- sentencias
*/

select * from TablaTotales-- vacía aún
select * from TablaAlmacen
select * from TablaVentas join TablaAlmacen 
on TablaVentas.id_producto = TablaAlmacen.id_producto

--Hago primero un insert en la tabla totales para luego poder hacer el update (en el curso no está el script)
declare @total int --Declaramos una variable int
	set @total = (select sum(cantidad) from TablaVentas) --obtenemos la suma de las cantidades y lo asignamos a la variable como nuestro total de ventas
	insert into TablaTotales values (@total)
	;

--Creacion trigger--
create trigger InsertarVenta --Asignamos un nombre al trigger
on TablaVentas --Indicamos la tabla donde se activara la accion
for insert --Despues de insertar en la TablaVentas
as
begin --Comienza las sentencias
	declare @total int --Declaramos una variable int
	set @total = (select sum(cantidad) from TablaVentas) --obtenemos la suma de las cantidades y lo asignamos a la variable como nuestro total de ventas
	update TablaTotales --hacemos un update a la tabla totales
	set TablaTotales.cantidad = @total 
end --finalizan las sentecias
		--fin Trigger--

--Comprobamos los valores ingresados
	select * from TablaVentas
	select * from TablaTotales

--insertamos un registro
insert into TablaVentas values(2,10)
 
	select * from TablaVentas
	select * from TablaTotales
