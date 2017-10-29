/*
Tutoriales SQL SERVER |  #59 Procedimientos Almacenados [Return]

Cuando se ejecute hasta la línea donde está el return, automáticamente 
ignora todas las líneas que vengasn depués

--create procedure NombreProcedimiento
--@parametro tipo output
--as
--sentencia
	--return
 
*/

--drop proc seleccion

create procedure seleccion--Nombre Procedimiento
@edad int, --Parametros Entrada
@sexo varchar(20) --Parametros Entrada
as
--Podemos colocar un case tambien si tenemos varios casos
if (@edad is null ) or (@sexo is null)--Si alguno de los dos o ambos parametros es null
		return 0--Retorna un 0
else --Si ambos parametros tienen valores
	return 1  --Retorna 1
	
	
	declare @retorno int --Declaramos la variable
	exec @retorno = seleccion null,'dhj' --Ejecutamos el procedimiento
	select @retorno --Mostramos el valor
	