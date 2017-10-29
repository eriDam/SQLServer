/*
Tutoriales SQL SERVER |  #62 Procedimientos Almacenados [Anidacion]

--create procedure NOMBREPROCEDIMIENTO
--parametros
--with encryption
--as 
--sentencias
*/


--Creamos el primer procedimiento parea luego llamarlo desde el otro
create procedure procedimiento1
@resultado int output
as 
set @resultado = (select sum(edad) from usuarios)

--la suma de la edad de todas las personas [677]

--Desde este segundo llamaremos al primero
create procedure procedimiento2
@numero2 int output
as
begin--utilizamos begin cuando hacemos mas de una sentencia dentro
declare @numero int -- 677
     exec procedimiento1  @numero output
     set @numero2=@numero
     --@numero2 = 677
   end

   
--Mostraremos los datos
declare @num int --declaro una variable
exec procedimiento2 @num output --paso la variable de salida
select @num --imprimo el valor