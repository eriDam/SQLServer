/*
Tutoriales SQL SERVER #40 | Subconsultas con in & not in
 
*/

Select * from libros

Select * from libros where id_libro =
				 (Select id_libro from libros where nombre='100 años de soledad')

Select * from libros where id_libro in (2,4,6)
Select * from libros where id_libro not in (2,4,6)

Select * from libros where id_libro not in
				 (Select id_libro from libros where precio_venta > 168)