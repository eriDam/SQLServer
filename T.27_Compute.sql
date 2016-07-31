/*
Tutoriales SQL Server#27 |  Compute
- Ahorrar código
*/

 

select nombre, edad from usuarios 
where sexo = 'F' 
 
select  min(edad) from usuarios 
where sexo='F' 

--Misma consulta que las 2 anteriores ahorra código
select nombre, edad from usuarios where sexo ='F'
compute min(nombre),Sum(edad);