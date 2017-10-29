/*
Tutoriales SQL SERVER |  #58 Procedimientos Almacenados [Parametros Salida]

Cuando se ejecute me devolverá una salida con una variable

Es la misma estructura pero con la diferencia de que a los parametros de 
salida se les añade output despues del tipo de dato

--create procedure NombreProcedimiento
--@parametro tipo output
--as
--sentencia
*/
drop proc seleccion;

create procedure seleccion--Nombre Procedimiento
@edad int, --Parametros Entrada
@sexo varchar(20), --Parametros Entrada
@count int output --Parametros Salida
as
 set  @count =  (select count(id_usuario) from usuarios where edad >=@edad and sexo = @sexo) --Contenido del procedimiento


declare @total int --Declaramos la variable
exec seleccion  18, 'F',@total output --Ejecutamos el procedimiento
select @total--Mostramos el resultado


