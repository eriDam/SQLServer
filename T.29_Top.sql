/*
Tutoriales SQL Server#29 |  Top
- Nos sirve para seleccionar un número de registros, por ejemplo Top 10  
*/

use empleados;
select * from usuarios 


select Top 10 * from usuarios 

--Para recibir el Top inferior, con un poco de lógica 
--sacamos el id y lo ordenamos al revés
select Top 10 * from usuarios 
order by id_usuario desc;

 