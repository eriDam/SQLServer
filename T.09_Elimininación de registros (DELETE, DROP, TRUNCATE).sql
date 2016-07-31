/*
Tutoriales SQL Server #09 Elimininación de registros (DELETE, DROP, TRUNCATE)
DELETE --> elimina registros

DROP --> elimina la estructura dela tabla

TRUNCATE --> elimina los registros (reset)
*/
--Creo una Tabla temporal de forma gráfica con algunos registros

--Creo unos registros de forma 
insert into Table_1 values('karla',21);
insert into Table_1 values('maria',19);
insert into Table_1 values('nancy',23);

SELECT * FROM Table_1

--Eliminamos todas las filas de la Tabla
Delete  FROM Table_1 
--WHERE id_usuario >= 3
 
--Borra sólo 1 registro
SELECT  * FROM usuarios
Delete  FROM usuarios 
WHERE id_usuario = 7

--Creo unos registros 
insert into Table_1 values('karla',21);
insert into Table_1 values('maria',19);
insert into Table_1 values('nancy',23);

--Elimina absolutamente todo, resetea la tabla, si hay un campo autoincrementable
--para que empiece la numeración correcta y no se queden los hueco que hemos borrado. 
truncate table Table_1

drop table Table_1

 
 

