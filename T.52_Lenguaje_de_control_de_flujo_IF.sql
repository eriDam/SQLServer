/*
Tutoriales SQL SERVER |  #52 | Lenguaje de Control de Flujo [IF]
https://www.youtube.com/watch?v=JZIEevYaY0s&index=53&list=PL6hPvfzEEMDaU4aiS389oXamdN8sip856

IF 

*/


-- IF( condicional)
		--Sentencia a ejecutar
--Else
	    --Sentencia a ejecutar

select * from usuarios


IF exists (select * from usuarios where edad <= 18) --Condicional
	select * from usuarios where edad <= 18 --Ejecucion
Else --Si no cumplio la condici�n
	select 'No Hay Menores de 18 a�os' --Sentencia Resultado
 