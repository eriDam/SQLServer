/*
Tutoriales SQL Server#29 |  Top
- Nos sirve para seleccionar un n�mero de registros, por ejemplo Top 10  
*/

use empleados;
select * from usuarios 


select Top 10 * from usuarios 

--Para recibir el Top inferior, con un poco de l�gica 
--sacamos el id y lo ordenamos al rev�s
select Top 10 * from usuarios 
order by id_usuario desc;

 