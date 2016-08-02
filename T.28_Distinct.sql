/*
Tutoriales SQL Server#28 |  Distinct
- Sirve para que aparezacn los resultados sin duplicar, 
  por ejemplo; Un empleado hace varios pedidos, si 
  hacemos la consulta Count(IdEmpleado) sacaria varios con el mismo idEmpleado 
- No elimina de la Base de datos, es temporal.
*/

 use empleados;

select nombre, edad from usuarios 
order by nombre;

--Para que solo aparezca un registro de cada nombre 
select distinct nombre from usuarios
order by nombre;

--Suma la edad sin que se repita
select Sum(distinct edad) from usuarios
 
  