/*
Tutoriales SQL Server#27 |  Compute
- Sirve para realizar en una consulta lo que normalmente nos cuesta 3 (Ahorrar c�digo)

*/

 use empleados;

select nombre, edad from usuarios 
where sexo = 'F' 
 
select  min(edad) from usuarios 
where sexo='F' 

--Misma consulta que las 2 anteriores ahorra c�digo
select nombre, edad from usuarios where sexo ='F' 
compute min(nombre),Sum(edad);
/*
Nota importanteImportante
Esta caracter�stica se quitar� en la versi�n siguiente de 
Microsoft SQL Server. 
No utilice esta caracter�stica en nuevos trabajos de desarrollo y modifique lo antes posible las aplicaciones que actualmente la utilizan. En su lugar, utilice ROLLUP. Para obtener m�s informaci�n, vea GROUP BY (Transact-SQL).
https://technet.microsoft.com/es-es/library/ms181708(v=sql.105).aspx

*/