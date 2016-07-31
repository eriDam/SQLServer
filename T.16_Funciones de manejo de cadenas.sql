/*
Tutoriales SQL Server#16| Funciones de manejo de cadenas parte 1
 
Cadena --> Conjunto de caracteres
 
*/
 
/*Cadena: Hola a todos
 Sintaxis para usar SUBSTRING
select SUBSTRING ('Cadena a la que sacar el contenido',inicio de la subcadena,nº de caracteres que queremos coger);
*/ 


select SUBSTRING ('Hola a todos',8,5);

--Conversión de un nº a una cadena
select STR(123);

--STUFF Reemplazar una parte de una cadena
/*Tutoriales SQL
Select STUFF('cadena original',inicio del reemplazo,nº de caracteres a reemplazar, 'nueva cadena')
*/
Select STUFF('Tutoriales SQL',12,6,'Bases de datos');

--LEN para obtener el nº de caracteres
select LEN('Tutoriales de Bases de Datos');

--Conversión de un dígito al valor en código ASCI en este caso la letra C
select CHAR(67)

