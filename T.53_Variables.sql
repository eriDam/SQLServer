/*
Tutoriales SQL SERVER |  #53 Variables
*/
--Modo de construir:
	 --declare @nombreVariable TipoDato
	 --set @nombreVariable = valor

select * from usuarios

declare @Variablesexo varchar(20)--Declaracion de variable
declare @Variableedad int--Declaracion de variable
set @Variablesexo = 'M'--Asignacion de valor
set @Variableedad = 18 --Asignacion de valor
select * from usuarios where sexo = @Variablesexo and edad >= @Variableedad --Uso de variable

declare @sumatorioHombre int--Declaracion de variable
declare @sumatorioMujeres int--Declaracion de variable
set @sumatorioHombre = (select SUM(edad) from usuarios where sexo = 'M')--Asignacion de valor,resultado de una consulta1
set @sumatorioMujeres = (select SUM(edad) from usuarios where sexo = 'F')--Asignacion de valor,resultado de una consulta1
if  (@sumatorioHombre > @sumatorioMujeres)--Condicion
	begin--Inicio de las sentencias
		select 'El sumatorio de la edad de los hombres es'--Setencia :D
		select @sumatorioHombre
	end--Fin de la sentencia
else
		begin
			select 'El sumatorio de la edad de las mujer es'  
			select @sumatorioMujeres
		end
	 