/*
Tutoriales SQL SERVER | #43 Subconsultas con insert
https://www.youtube.com/watch?v=IXmsQsvMJJs&index=43&list=PL6hPvfzEEMDaU4aiS389oXamdN8sip856 


Creamos gráficamente la tabla nombres con el campo Nombre
*/

 select * from nombres

 --Copiamos todos los nombres de la tabla usuarios y se los rellenamos en la tabla nombres
  insert into Nombres (nombre)
 select (nombre)
 from usuarios