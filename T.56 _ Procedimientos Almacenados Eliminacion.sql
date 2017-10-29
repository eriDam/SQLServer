/*
Tutoriales SQL SERVER |  #56 _ Procedimientos Almacenados Eliminacion. 
*/
 --Drop procedure NombreProcedimiento

--if object_id('NombreProcedimiento') is not null
--Drop procedure NombreProcedimiento
--else
	--Sentencia a ejecutar
	
	drop proc SoloMujeres--Eliminacion de procedimiento

if object_id('SoloMujeres') is not null ---validacion
	drop procedure SoloMujeres --Eliminacion de procedimiento
else			
	select 'No existe SoloMujeres'--Mensaje de salida
	exec SoloMujeres;

---podemos volver a crearlo
CREATE PROC SoloMujeres 
AS
--CREATE PROCEDURE SoloMujeres AS --Creacion de Procedimiento
SELECT nombre,edad,sexo from usuarios WHERE sexo = 'F' --Sentencias del procedimiento
exec SoloMujeres --Ejecucion de pro