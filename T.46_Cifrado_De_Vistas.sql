/*
Tutoriales SQL SERVER | #46 Cifrado de Vistas
 
Temas de Seguridad: Encriptado de una vista

*/

Select * from usuarios;
 

--Me muestra la sentencia de dentro de la vista, ven todo el contenido de la misma
sp_helptext v_usuarios

Select * from v_usuarios;

--Creamo una vista cifrada para que el usuario no pueda ver los datos de dentro
Create view v_E with encryption as
select * from usuarios

--Comprobamos
Select * from v_E
sp_helptext v_E