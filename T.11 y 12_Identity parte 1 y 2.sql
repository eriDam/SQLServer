/*
Tutoriales SQL Server#11 y #12| Identity parte 1 y 2
-El identity es una propiedad o un atributo extra que podemos colocar
a nuestros campos, no viene por defecto, es similar a un autoicremento.
-Cada vez que agregamos un registro el identity se aumenta en 1.
-Por defecto empieza en uno y su incremento es de uno.
-No permite valores nulos.
-No permite la introducción de campo ni la modificación. 
-Permite la repetición del nº de identity.
-Para ver si el campo de la tabla es identity, podemos ir a ver las 
propiedades de columna.


T.12
-Sólo un cmapo de la tabla puede ser identity
Da error si se intenta poner mas de uno:
Create Table usuarios3
(
id_usuario int identity,
nombre int identity
)

 
*/


Create Table usuarios2
(
id_usuario int identity,
nombre varchar(50) not null
)

select * from usuarios2

 
--T.12
--Create Table usuarios3 de forma gráfica
--Insertamos valores, sin poner el id_usuario que es el identity que se ha indicado, 
--se rellana solo empezando por el 1 si no le hemos indicado otro comienzo
insert into usuarios3 values('david');
insert into usuarios3 values('fabicia');
insert into usuarios3 values('carlos');
insert into usuarios3 values('miguel');
insert into usuarios3 values('tatiana');
insert into usuarios3 values('jesus');
insert into usuarios3 values('gael');
insert into usuarios3 values('maría');

select * from usuarios3

--Saber desde donde está iniciando la cuenta
select IDENT_SEED ('usuarios3')
--Saber el valor del incremento
select IDENT_INCR ('usuarios3')


--Creamos una nueva tabla para ver mejor la diferencia
--Indicamos en el primer param que empiece por el num 56 y el incremneto sea de 3 en 3
Create Table usuarios4
(
id_usuario int identity(56,3),
nombre varchar(50) not null
)
 
select * from usuarios4

insert into usuarios4 values('david');
insert into usuarios4 values('fabicia');
insert into usuarios4 values('carlos');
insert into usuarios4 values('miguel');
insert into usuarios4 values('tatiana');
insert into usuarios4 values('jesus');
insert into usuarios4 values('gael');
insert into usuarios4 values('maría');

select * from usuarios4

--Como insetar el dato de Identity,
--normalmente no se puede por que viene desactivado por default
set identity_insert usuarios4 on;

--Si queremos insertar el identity, hay que especificar los campos primero
insert into usuarios4 (id_usuario,nombre) values (77,'gael');
--El 77 ya estaba asignado pero como permite duplicar el identity saldrá dos veces

--Desactivar el poder insertar de forma manual el identity
set identity_insert usuarios4 off;


--
Create table pruebas
(
id_usuario int identity,
nonbre varchar(50) not null
)

Select * from pruebas

INSERT INTO pruebas VALUES('a');
INSERT INTO pruebas VALUES('b');
INSERT INTO pruebas VALUES('c');
INSERT INTO pruebas VALUES('d');
INSERT INTO pruebas VALUES('e');
INSERT INTO pruebas VALUES('f');

Select * from pruebas

--Delete elimina uno o todos los registros de la tabla
Delete pruebas
Select * from pruebas

--Si vuelvo a insertar os campos, la cuenta empezará a
-- partir del 7 ya que hemos borrado 6 regsitros
INSERT INTO pruebas VALUES('a');
INSERT INTO pruebas VALUES('b');
INSERT INTO pruebas VALUES('c');
INSERT INTO pruebas VALUES('d');
INSERT INTO pruebas VALUES('e');
INSERT INTO pruebas VALUES('f');


Select * from pruebas;

--Para resetar la cuenta del identity o un campo autoincremet, debemos utilizar Truncate
--No me permite utilizar Truncate, https://msdn.microsoft.com/es-es/library/ms177570.aspx
TRUNCATE TABLE Curso_SQL.pruebas;
 

Select * from pruebas;

INSERT INTO pruebas VALUES('a'); 
INSERT INTO pruebas VALUES('b');
INSERT INTO pruebas VALUES('c');
INSERT INTO pruebas VALUES('d');
INSERT INTO pruebas VALUES('e');
INSERT INTO pruebas VALUES('f');

Select * from pruebas