/*
Tutoriales SQL SERVER | #41 Subconsultas con any & all
 https://www.youtube.com/watch?v=yLv1wPpWEGc&index=41&list=PL6hPvfzEEMDaU4aiS389oXamdN8sip856

Equivalentes:

in: = any

not in: <> all



*/

--Muestra todas los empleados con sexo femenino que tengan la edad igual que algun empleado 
--masculino 
Select * from usuarios where sexo ='F' and edad = any (select edad from usuarios where sexo = 'M')
--Lo contrario
Select * from usuarios where sexo ='F' and edad <> all (select edad from usuarios where sexo = 'M')

--Comprobar 
Select * from usuarios where sexo = 'F' order by edad
Select * from usuarios where sexo = 'M' order by edad