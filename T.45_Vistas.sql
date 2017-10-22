/*
Tutoriales SQL SERVER | #45 Vistas
https://www.youtube.com/watch?v=Ppxv02m-yBQ&index=45&list=PL6hPvfzEEMDaU4aiS389oXamdN8sip856 
 
Las vistas son consideradas como tablas virtuales creadas a partir de una consulta. 
Una vista no almacena un histórico, almacena datos de forma dinámica confirme a la tabla actual.
Select * from v_usuarios
*/

CREATE VIEW v_usuarios
AS
/*Sentencia SQL que va a dar datos a esta vista*/
 select Nombre from usuarios
 
 ;

 Select * from v_usuarios;

 Select COUNT (Nombre) from usuarios