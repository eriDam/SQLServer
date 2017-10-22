/*
Tutoriales SQL SERVER |  #48 Update & Delete con Vistas
 
Operacione que podemos hacer con las vistas


*/

Select * from usuarios order by edad
 

--Creamos Vista

Create View v_Mujeres as
Select * from usuarios where sexo= 'F'

--Consultamos la vista ordenando por edad
Select * from v_Mujeres order by edad

--Vamos a modificar los datos de la tabla a través de la vista.
Update v_Mujeres set tipo_usuario= 'Root'
where edad > 25

--Eliminamos  todas las mujeres > 25
Delete v_Mujeres  
where edad > 25