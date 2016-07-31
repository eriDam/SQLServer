/*
Tutoriales SQL Server#15| Funciones de agregado

-Funci�n es un grupo o conjunto de sentencias que operan como una unidad l�gica.
-Caracter�sticas:
	Tienen que tener un nombre.
	Retorna o devuelve un valor de salida y puede aceptar valores de entrada.
	Las func de SQL no pueden ser modificadas, las que crea el usuario si. 
-Tipos:
	Escalares, con valores de tabla, de agregado, del sistema.

Funciones de agregado Sum, Count, min, Max

Sum --> Suma

Count --> Cuenta

Min --> m�nimo

Max --> m�ximo


*/

Use libreria2

Select * from libros;

--Contar cuantos libros hay
select Count (titulo) from libros

--Contar cuantos libros hay q valgan mas de 200
select Count (titulo) from libros
where precio_venta > 200

--Sumar cuanto costar�an todos los libros
select Sum(precio_venta) from libros

--Mostrar el libro que me ha costado mas
select Max(Precio_compra) from libros

--Mostrar el libro que me ha costado menos
select Min(Precio_compra) from libros