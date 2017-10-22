/*
Tutoriales SQL SERVER |  #55 Procedimientos Almacenados [Crecion y Ejecucion]
*/
 --Son un conjunto de sentencias almacenadas en el servidor.
 
--Create procedure NombreProcedimiento  as
--Sentencias

select * from usuarios where nombre like '%pau%' --Mostrar los datos

create procedure SoloMujeres as --Creacion de Procedimiento
select nombre,edad,sexo from usuarios where sexo = 'F' --Sentencias del procedimiento
exec SoloMujeres --Ejecucion de pro


drop procedure InsertarChica
--Creacion de Procedimiento,
create procedure InsertarChica as 
insert into usuarios values('Paulina','Pau','MDZ','regitrado',20,'F');
exec InsertarChica --Ejecucion de pro
select * from usuarios where nombre like '%pau%';

delete  from usuarios where  nombre like '%pau%'