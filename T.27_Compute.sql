/*
Tutoriales SQL Server#27 |  Compute
- Sirve para realizar en una consulta lo que normalmente nos cuesta 3 (Ahorrar código)

*/

 use empleados;

select nombre, edad from usuarios 
where sexo = 'F' 
 
select  min(edad) from usuarios 
where sexo='F' 

--Misma consulta que las 2 anteriores ahorra código
select nombre, edad from usuarios where sexo ='F' 
compute min(nombre),Sum(edad);
/*
Nota importanteImportante
Esta característica se quitará en la versión siguiente de 
Microsoft SQL Server. 
No utilice esta característica en nuevos trabajos de desarrollo y modifique lo antes posible las aplicaciones que actualmente la utilizan. En su lugar, utilice ROLLUP. Para obtener más información, vea GROUP BY (Transact-SQL).
https://technet.microsoft.com/es-es/library/ms181708(v=sql.105).aspx

*/