#2.- El gerente quiere conocer los apellidos y el nombre del empleado que más horas ha trabajado. La consulta debe mostrar 2 columnas:
#Los apellidos y el nombre, separados por una coma y un espacio con el encabezado ‘Apellidos y nombre’
#Las horas totales trabajadas, con el encabezado ‘Horas totales trabajadas’
	select concat(nombre,", ",apellidos)as 'Apellidos y nombre', sum(horas)as Horas from empleados join intervienen
	on empleados.CodEmpleado = intervienen.CodEmpleado group by nombre order by Horas desc limit 1;