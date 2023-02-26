#12.- Nombre y función de los empleados que han trabajado en el departamento de Marketing.
select empleados.nombre, trabajan.funcion from empleados
    inner join trabajan
    inner join departamentos
    on empleados.codigo = trabajan.cod_emp
    and trabajan.cod_dep = departamentos.codigo
    and departamentos.nombre = 'marketing';
#13.- Nombre del empleado, nombre del departamento y función que han realizado de los empleados que tienen 1 hijo.
select empleados.nombre, departamentos.nombre, trabajan.funcion from empleados
	inner join departamentos
    inner join trabajan
    on empleados.codigo = trabajan.cod_emp
    and trabajan.cod_dep = departamentos.codigo
    and empleados.hijos = 1;
#14.- Nombre de los empleado que ha trabajado en el departamento de 'Recursos Humanos' que tienen entre 1 y 3 hijos.
select empleados.nombre from empleados
	inner join departamentos
    inner join trabajan
    on empleados.codigo = trabajan.cod_emp
    and trabajan.cod_dep = departamentos.codigo
    and departamentos.nombre = 'Recursos Humanos'
    and empleados.hijos between 1 and 3;
#15.- Nombre del empleado, mes y ejercicio de sus justificantes de nómina, número de línea y cantidad de las líneas de los justificantes para la empleada 'Encarna López López'.
select empleados.nombre, just_nominas.mes, just_nominas.ejercicio, lineas.numero, lineas.cantidad from empleados
	inner join just_nominas inner join lineas
    on empleados.codigo = just_nominas.cod_emp
    and just_nominas.mes = lineas.mes
    and just_nominas.ejercicio = lineas.ejercicio
    and just_nominas.cod_emp = lineas.cod_emp
    and empleados.nombre = 'Encarna López López';
#16.- Nombre del empleado, mes y ejercicio de sus justificantes de nómina para los empleados que han trabajado en el departamento de Dirección.
select empleados.nombre, just_nominas.mes, just_nominas.ejercicio from empleados
	inner join trabajan inner join departamentos inner join just_nominas
    on empleados.codigo = trabajan.cod_emp
    and empleados.codigo = just_nominas.cod_emp
    and trabajan.cod_dep = departamentos.codigo
    and departamentos.nombre = 'Dirección';
#17.- Quiero saber el sueldo neto (sueldo bruto - descuento para impuestos) de cada empleado.
select empleados.nombre,sum(just_nominas.ingreso - just_nominas.descuento) as Sueldo from empleados
	inner join just_nominas
    on empleados.codigo = just_nominas.cod_emp group by empleados.nombre;
#18.- Nombre de los empleados que han ganado más de 2000 € en el año 2006.
select empleados.nombre,sum(just_nominas.ingreso - just_nominas.descuento) as Sueldo from empleados
	inner join just_nominas
    on empleados.codigo = just_nominas.cod_emp
    and just_nominas.ejercicio = '2006'
    group by empleados.nombre having sum(just_nominas.ingreso - just_nominas.descuento)>2000;
    
#24.- Nombre, edad de los empleados y nombre del departamento de los empleados que han trabajado en más de un departamento.
select empleados.nombre,count(*), departamentos.nombre, YEAR(CURDATE())-YEAR(empleados.fnacimiento) as Años from empleados
	inner join departamentos
    inner join trabajan
    on empleados.codigo = trabajan.cod_emp
    and trabajan.cod_dep = departamentos.codigo
    group by trabajan.cod_emp;
select cod_emp, count(*) from trabajan group by cod_emp having count(*)>1;
#25.- Nombre e ingresos percibidos empleado más joven y del más longevo.
select empleados.nombre, just_nominas.ingreso as Ingresos, YEAR(CURDATE())-YEAR(empleados.fnacimiento)as Años from empleados
	inner join just_nominas
    on empleados.codigo = just_nominas.cod_emp
    and YEAR(CURDATE())-YEAR(empleados.fnacimiento);

#☺CORREGIDO POR MI EL 25
select distinct e.nombre, e.fnacimiento,sum(j.ingreso - j.descuento) Sueldo from empleados e
	join just_nominas j
    on e.codigo = j.cod_emp
    where fnacimiento = (select max(fnacimiento) from empleados) 
    or
    fnacimiento = (select min(fnacimiento) from empleados) group by nombre;
    