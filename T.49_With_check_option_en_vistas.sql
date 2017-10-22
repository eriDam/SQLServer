/*
Tutoriales SQL SERVER |  #49 With Check Option en Vistas
 https://www.youtube.com/watch?v=qg4Clxz5LE0&list=PL6hPvfzEEMDaU4aiS389oXamdN8sip856&index=49

 Nos va apermitir condicionar las vistas y la modificacion a los datos
*/

CREATE VIEW copy as
select * from usuarios where sexo= 'M'
With check option;
 
select * from copy
delete from copy --elimina solo los hombres, ya que hacemos el where que está en la vista

--Comprobamos
select * from usuarios
