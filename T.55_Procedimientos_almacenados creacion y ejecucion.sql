/*
Tutoriales SQL SERVER |  #55 Procedimientos Almacenados [Crecion y Ejecucion]
*/
 --Son un conjunto de sentencias almacenadas en el servidor.
 
--Create procedure NombreProcedimiento  as
--Sentencias

--select * from usuarios where nombre like '%pau%'; --Mostrar los datos

--También podemos crear el stored con proc
CREATE PROC SoloMujeres 
AS
--CREATE PROCEDURE SoloMujeres AS --Creacion de Procedimiento
SELECT nombre,edad,sexo from usuarios WHERE sexo = 'F' --Sentencias del procedimiento
exec SoloMujeres --Ejecucion de pro
;
 

 

--Creacion de Procedimiento,
CREATE PROCEDURE InsertarChica AS 
insert into usuarios values('Paulina','Pau','MDZ','registrado',20,'F')
;
--Ejecutamos el procedimiento
exec InsertarChica --Ejecucion de pro
select * from usuarios where nombre like '%pau%';
DELETE from usuarios where nombre like '%pau%';

delete  from usuarios where  nombre like '%pau%'