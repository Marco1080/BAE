#1.- Pasadas las fiestas navideñas Talleres Faber quiere enviar publicidad a sus clientes. Para ello quiere seleccionar a aquellos 
#a los que no se les ha emitido ninguna factura desde el 6 de Enero. Obtener un listado con Nombre, Apellidos y Dirección de esos clientes.
select nombre, apellidos, direccion from clientes 
	where CodCliente not in(select CodCliente from facturas 
    where FechaFactura >= '2011-01-06' 
    );
#8.- En Talleres Faber están pensando en hacer más rentable la gestión de los recambios. Se pretende optimizar el stock, 
#para ello se solicita un listado con los siguientes datos: IdRecambio, Descripción, UnidadBase y Stock, de los artículos 
#que superen el stock considerado como óptimo, según los siguientes criterios:
#Para los artículos cuya unidad base se mide como una unidad se considera el stock óptimo hasta 10 artículos.
#Para los artículos cuya unidad base no sea una unidad el stock considerado como óptimo es hasta 4 artículos.
select idrecambio as idrecambio, descripcion as descripcion, unidadbase as unidadbase, stock
	from recambios
    where unidadbase='unidad' and stock>10
    or unidadbase!='unidad' and stock>4;#!= igual a not like
    

#9.- Con relación a las actuaciones, se considera importante saber cuántas reparaciones se realizan de importe superior a la media.
#La consulta nos devolverá un solo dato: el número de reparaciones realizadas cuyo importe supera el importe medio de las actuaciones.
select count(referencia) as NumeroReparaciones from realizan
	where referencia in(select referencia from actuaciones where importe > (select avg(importe) from actuaciones));
    
#10.- Obtener un listado que nos informe del número de facturas que hemos emitido a cada cliente.
#El listado tendrá dos columnas: el nombre completo del cliente y el número de facturas que le corresponden.