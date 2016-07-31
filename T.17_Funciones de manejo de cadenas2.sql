/*
Tutoriales SQL Server#17| Funciones de manejo de cadenas parte 2
 
Cadena --> Conjunto de caracteres
 
*/
 
/*Convertir a minúscula y mayúscula*/ 

select LOWER ('EL CAMBIO A MINUSCUscula del tutorial')
select UPPER ('EL CAMBIO A MINUSCUscula del tutorial')


--Eliminar espacios de la izquierda

select LTRIM('    EL CAMBIO A MINUSCUSCULA DELTUTORIAL          ')

--Eliminar espacios de la derecha
select RTRIM('    EL CAMBIO A MINUSCUSCULA DELTUTORIAL       ');

/* Reemplazar cadenas
select REPLACE('CADENA ORIGINAl',la cadena a buscar para reemplazar, cadena de sustitución)*/
select REPLACE('CADENA ORIGINAL ES ESTA','ORIGINAL', 'REEMPLAZADA') 

--Palindromos pone la cadena al revés
select REVERSE('erika')

/* Buscar coincidencias
select PATINDEX('lo que queremos buscar','la cadena donde lo vamos a buscar')
Devuelve el inicio donde empieza la coincidencia que buscamos*/

select PATINDEX('%todos%','Hola a todos desde SQLServer')

/*multiplicacion de caracteres (cadenas) 
select REPLICATE('cadena',numero de veces que queremos repetir)*/
select REPLICATE('La cadena  ',5) 

--Agregar espacios en la cadena
select 'Tutoriales'+SPACE(15)+' SQL';