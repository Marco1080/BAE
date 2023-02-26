#41.- Hacer ejercicio 22 (Obtener los codcoche suministrados por algún concesionario de 'BARCELONA') con inner join.
select codcoche from distribucion 
	inner join concesionario
	on distribucion.cifc = concesionario.cifc
	and concesionario.ciudad = 'barcelona';
#42.- A partir del ejercicio 22 (Obtener los codcoche suministrados por algún concesionario de 'BARCELONA')AÑADE NOMBRE Y MODELO DEL COCHE.
select distribucion.codcoche, coches.nombre, modelo
	from coches inner join distribucion inner join cocesionario
    on coches.codcoche=distribucion.codcoche
    and distribucion.cifc = concesionario.cifc
    and concesionario.ciudad = 'barcelona';
#43.- Hacer el ejercicio 23 (Obtener el color de los coches vendidos por el concesionario 'ACAR') con inner join.
select color from ventas inner join concesionario 
	on ventas.cifc = concesionario.cifc
	and concesionario.nombre = 'acar';
    
#44.- Hacer el ejercicio 24 (Obtener el codcoche de aquellos coches vendidos a clientes de 'MADRID') usando inner join.
select codcoche 
	from ventas 
    inner join clientes 
    on ventas.dni = clientes.dni 
    and clientes.ciudad ='madrid';

#45.- A partir del ejercicio 24 (Obtener el codcoche de aquellos coches vendidos a clientes de 'MADRID') AÑADE EL NOMBRE Y MODELO DEL COCHE .
select ventas.codcoche, coches.nombre, modelo 
	from ventas 
    inner join clientes 
    inner join coches 
    on ventas.dni = clientes.dni 
    and ventas.codcoche=coches.codcoche 
    and clientes.ciudad ='madrid';
    
#46.- A partir del ejercicio 24 (Obtener el codcoche de aquellos coches vendidos a clientes de 'MADRID') AÑADE LA MARCA, EL NOMBRE Y MODELO DEL COCHE .
select ventas.codcoche, coches.nombre, modelo, marcas.nombre
	from ventas 
    inner join clientes 
    inner join coches
    inner join marcas
    on ventas.dni = clientes.dni 
    and ventas.codcoche=coches.codcoche
    and coches.cifm= marcas.cifm
    and clientes.ciudad ='madrid';
    
#47.- Hacer el ejercicio 31 (Obtener el nombre y el apellido de los clientes que han comprado como mínimo un coche 'BLANCO' y un coche 'ROJO') utilizando inner join
select distinct clientes.nombre, clientes.apellidos
	from clientes inner join ventas inner join ventas as ventas2
    on clientes.dni=ventas.dni
    and clientes.dni=ventas2.dni
    and ventas.color='blanco'
    and ventas2.color='rojo';
    
#48.- Hacer el ejercicio 33 (Obtener el nombre y el modelo de los coches vendidos por algún concesionario de 'BARCELONA') con inner join.
select coches.nombre,coches.modelo
	from ventas
    inner join coches
    inner join concesionario
    on ventas.codcoche=coches.codcoche
    and ventas.cifc=concesionario.cifc
    and concesionario.ciudad = 'barcelona';
	
#49.- Hacer el ejericiio 34 (Obtener todos los nombres y apellidos de los clientes que hayan adquirido algún coche del concesionario 'DCAR')usando inner join.
select clientes.nombre, clientes.apellidos 
	from clientes
    inner join ventas
    inner join concesionario
    on clientes.dni=ventas.dni
    and ventas.cifc = concesionario.cifc
    and concesionario.nombre = 'dcar';
    
#50.- Hacer el ejerccio 35 (Obtener el NOMBRE y el APELLIDO de los clientes que han adquirido un coche modelo 'GTI' de color 'BLANCO') utilizando inner join.
select clientes.nombre, clientes.apellidos 
	from clientes
    inner join ventas
    inner join coches
    on clientes.dni=ventas.dni
    and ventas.codcoche=coches.codcoche
    and coches.modelo = 'gti'
    and ventas.color = 'blanco';
    
#51.- Hacer el ejercicio 36 (Obtener el codcoche de los coches que han sido adquiridos por un cliente de 'MADRID' a un concesionario de 'MADRID') 
#pero añadiendo tanto el nombre y ciudad de los clientes como de los concesionarios.
select coches.codcoche, clientes.nombre, clientes.ciudad, concesionario.nombre
	from coches
    inner join distribucion
    inner join concesionario
    inner join ventas
    inner join clientes
    on coches.codcoche = distribucion.codcoche
    and distribucion.cifc = concesionario.cifc
    and concesionario.cifc = ventas.cifc
    and ventas.dni = clientes.dni
    and concesionario.ciudad = 'madrid'
    and clientes.ciudad = 'madrid';
#52.- Repite el ejercicio 37 (Obtener el dni, nombre, apellido y ciudad de los clientes que 
#han adquirido un automóvil a un concesionario que posea actualmente coches en stock del modelo 'GTI') usando inner join.
select clientes.dni, clientes.nombre, clientes.apellidos, clientes.ciudad, coches.modelo 
	from clientes
    inner join ventas
    inner join coches
    inner join distribucion
    on clientes.dni = ventas.dni
    and distribucion.cifc = ventas.cifc
    and coches.codcoche = distribucion.codcoche
    and coches.modelo = 'GTI'
    and distribucion.cantidad >=1;
#53.- Hacer el ejercicio 38 (Obtener el nombre, apellido y ciudad de los clientes que han adquirido un 
#automóvil a un concesionario de 'MADRID' que posea actualmente coches en stock del modelo 'GTI') con inner join.
select clientes.nombre, clientes.apellidos, clientes.ciudad from clientes
	inner join concesionario
    inner join coches
    inner join ventas
    inner join distribucion
    on clientes.dni = ventas.dni
    and distribucion.cifc = ventas.cifc
    and coches.codcoche = distribucion.codcoche
    and distribucion.cantidad>0
    and coches.modelo='gti'
    and concesionario.cifc= ventas.cifc
    and concesionario.ciudad ='madrid';
#54.- Obtener los codcoche de los coches comprados en un concesionario de la misma ciudad que el cliente que lo compra.
#Comprobar el nombre de los clientes y los concesionarios son de la misma ciudad.
select codcoche, clientes.nombre as cliente, clientes.ciudad as 'ciudad cliente', concesionario.nombre as Concesionario, concesionario.ciudad as ciudadConcesionario
	from ventas 
    inner join clientes
    inner join concesionario
    on concesionario.ciudad = clientes.ciudad
    and concesionario.cifc = ventas.cifc
    and clientes.dni = ventas.dni;
#55.- Obtener los codcoche de los coches comprados en un concesionario de distinta ciudad que el 
#cliente que lo compra.. Comprobar el nombre de los clientes y los concesionarios son de distinta ciudad.
select codcoche, clientes.nombre as cliente, clientes.ciudad as 'ciudad cliente', concesionario.nombre as Concesionario, concesionario.ciudad as ciudadConcesionario
	from ventas 
    inner join clientes
    inner join concesionario
    on concesionario.ciudad != clientes.ciudad
    and concesionario.cifc = ventas.cifc
    and clientes.dni = ventas.dni;
#56.- Obtener todas las parejas de cifm de marcas y dni de clientes que sean de la misma ciudad.
select cifm,dni
	from marcas inner join clientes
	on marcas.ciudad = clientes.ciudad
	order by cifm;
#57.- Obtener todas las parejas de nombre de marcas que sean de la misma ciudad.
select A.nombre, B.nombre 
	from marcas A inner join marcas B
    on A.ciudad = B.ciudad
    and A.nombre > B.nombre;#ultimo paso para eliminar repeticiones