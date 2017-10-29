/*
Tutoriales SQL SERVER |  #67 Triggers Habilitar - Deshabilitar

--Estructura
-- ALTER TABLE NombreTabla
 -- ENABLE | DISABLE
 -- TRIGGER nombreDisparador
*/

select * from TablaAlmacen
select * from TablaVentas join TablaAlmacen 
on TablaVentas.id_producto = TablaAlmacen.id_producto

--Creacion trigger--
create trigger EliminarVenta --Asignamos un nombre al trigger
on TablaVentas --Indicamos la tabla donde se activara la accion
for delete --Despues de eliminar en la TablaVentas
as
begin --Comienza las sentencias
	declare @total int --Declaramos una variable int
	set @total = (select sum(cantidad) from TablaVentas) --obtenemos la suma de las cantidades y lo asignamos a la variable
	update TablaTotales --hacemos un update a la tabla totales
	set TablaTotales.cantidad = @total 
end --finalizan las sentecias
		--fin Trigger--

--Deshabilitamos el trigger para cuadno se haga el delete no salte  
ALTER TABLE TablaVentas
DISABLE TRIGGER EliminarVenta

--Habilitar el Trigger
ALTER TABLE TablaVentas
ENABLE TRIGGER EliminarVenta

--Comprobamos los valores ingresados
	select * from TablaVentas
	select * from TablaTotales
--Elimino un registro para ver como está funcionando
delete from TablaVentas where id_Venta=1

--eliminamos un registro
delete TablaVentas where TablaVentas.id_venta =12
 

