/*
Tutoriales SQL Server #09 Elimininación de registros (DELETE, DROP, TRUNCATE)
DELETE --> elimina registros

DROP --> elimina la estructura dela tabla

TRUNCATE --> elimina los registros (reset)
*/

insert into Table_1 values('karla',21);
insert into Table_1 values('maria',19);
insert into Table_1 values('nancy',23);

SELECT * FROM Table_1

Delete  FROM Table_1 
--WHERE id_usuario >= 3
 

SELECT  * FROM usuarios
Delete  FROM usuarios 
WHERE id_usuario = 7

insert into Table_1 values('karla',21);
insert into Table_1 values('maria',19);
insert into Table_1 values('nancy',23);

truncate table Table_1

 
 

