/*
Tutoriales SQL Server#27 |  Compute
- Ahorrar c�digo
*/

 

select nombre, edad from usuarios 
where sexo = 'F' 
 
select  min(edad) from usuarios 
where sexo='F' 

--Misma consulta que las 2 anteriores ahorra c�digo
select nombre, edad from usuarios where sexo ='F'
compute min(nombre),Sum(edad);