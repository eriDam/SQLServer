/*
Tutoriales SQL SERVER |  #64.1 Create database Tienda
*/

Create database Tienda;
use Tienda;
Go
create table TablaAlmacen
(
id_producto int identity primary key,
descripcion varchar(30)not null,
cantidad int not null,
);
insert into TablaAlmacen values('aceite',80);
insert into TablaAlmacen values('refresco',60);
insert into TablaAlmacen values('atun',50);
insert into TablaAlmacen values('leche',90);

create table TablaVentas
(
id_venta int identity primary key,
id_producto int not null,
cantidad int not null,
);
insert into TablaVentas values(1,20);
insert into TablaVentas values(1,20);
insert into TablaVentas values(2,3);
insert into TablaVentas values(2,20);

create table TablaTotales
(
id_insercion int identity primary key,
cantidad int not null,
);
