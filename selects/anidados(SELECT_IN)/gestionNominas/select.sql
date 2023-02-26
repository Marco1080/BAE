#    1.- Código y nombre de todos los departamentos, ordenados alfabéticamente.
select codigo, nombre from departamentos order by nombre;

#    2.- Mes y ejercicio de los justificantes de nómina pertenecientes al empleado 'José Luis Pérez'.
select mes, ejercicio from just_nominas 
	where cod_emp in( select codigo from empleados 
		where nombre like 'José Luis Pérez');
    
#    3.-Número de cuenta y nombre de los empleados cuya retención es mayor o igual que 10.
select cuenta, nombre from empleados where (retencion >=10);

#    4.-Código y nombre de los empleados que trabajan en el departamento de ventas, ordenados ascendentemente por nombre.
select codigo, nombre from empleados 
	where codigo in(select cod_emp from trabajan 
		where cod_dep in(select codigo from departamentos where nombre = 'ventas'))order by nombre;
        
#    5.- Nombre de los administrativos que tienen más de 2 hijos.
select nombre, hijos from empleados where codigo in(select cod_emp from trabajan where funcion like'administrativo') and hijos >2;

#    6.- Nombre y número de cuenta de los empleados cuyo nombre empieze por 'A' o por 'J'.
select nombre, cuenta from empleados where nombre like 'A%' or nombre like 'J%';

#    7.- Número de vendedores que tiene la empresa.
select count(nombre)'Nº Vendedores' from empleados where codigo in(select cod_emp from trabajan where funcion like'vendedor');

#    8.-Nombre del primer y último empleado en términos alfabéticos.
select min(nombre) Min, max(nombre) Max from empleados order by nombre;

#    9.-Nombre y número de hijos de los empleados cuya retención es: 8, 10 o 12.
select nombre, hijos from empleados where retencion in(8, 10, 12);

#    10.-Número de hijos y número de empleados que tienen 0,1,2, 3,... hijos, 
#	 mostrando sólo los grupos cuyos empleados tengan algún hijo. Sale que hay 4 empleados que tienen 1 hijo, 1 empleado con 2 hijos y 3 empleados tienen 3 hijos.
select hijos, count(nombre) from empleados where hijos >=1 group by hijos order by hijos;

#    11.- Número de hijos, retención máxima, mínima y media de los empleados agrupados por hijos.
select hijos, max(retencion)max, min(retencion)min, avg(retencion)media from empleados group by hijos order by hijos;

#    12.- Nombre y función de los empleados que han trabajado en el departamento de Marketing.
select nombre from empleados
	where codigo in(select cod_emp from trabajan 
		where cod_dep in(select codigo from departamentos where nombre like 'Marketing'));#INCOMPLETO<-------<-------<-------<-------<-------<
        
#    13.- Nombre del empleado, nombre del departamento y función que han realizado de los empleados que tienen 1 hijo.
select nombre from empleados;#INCOMPLETO<-------<-------<-------<-------<-------<

#    14.- Nombre de los empleado que ha trabajado en el departamento de 'Recursos Humanos' que tienen entre 1 y 3 hijos.
select nombre from empleados
	where codigo in(select cod_emp from trabajan 
		where cod_dep in(select codigo from departamentos where nombre like 'Recursos Humanos' )and hijos between 1 and 3);#INCOMPLETO<-------<-------<-------<-------<-------<
        
#    16.- Nombre del empleado, mes y ejercicio de sus justificantes de nómina para los empleados que han trabajado en el departamento de Dirección.

#    19.- Número de empleados cuyo número de hijos es superior a la media de hijos de los empleados.
select count(nombre)numero,avg(hijos)media from empleados where hijos > (select avg(hijos) from empleados);

#    20.- Nombre de los empleados que más hijos tienen o que menos hijos tienen.
select nombre, hijos from empleados where hijos <= all(select hijos from empleados) union select nombre, hijos from empleados where hijos >= all(select hijos from empleados) order by hijos;


#    22.- Nombre y fecha de nacimiento de todos los empleados (formato corto y largo).
select nombre, fnacimiento, fnacimiento fechaFormatoLargo from empleados 

#	 23. Nombre y fecha de nacimiento con formato «1 de Enero de 2000» y etiquetada la columna como fecha, de todos los empleados.
