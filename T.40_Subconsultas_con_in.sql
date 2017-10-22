/*
Tutoriales SQL SERVER #40 | Subconsultas con in & not in
 
*/

Select * from Carrera
Select * from alumno
Select * from Datos

Select * from Carrera where Carrera.Id_carrera =
				 (Select Id_carrera from alumno where Id_Carrera=13)