#1 Obtener todos los campos de todos los concesionarios.
select cifc, nombre, ciudad from concesionario;

#2 Obtener todos los campos de todos los clientes de 'MADRID'.
select dni, nombre, apellidos, ciudad from clientes where ciudad = 'Madrid';

#3 Obtener los nombres de todas las MARCAS de coches ordenadas alfabéticamente.
select nombre, modelo from coches order by modelo;

#4 Obtener el cifc de todos los concesionarios cuya cantidad en la tabla de DISTRIBUCION es mayor que 18.
select cifc from distribucion where  cantidad >18;

#5 Obtener el cifc de todos los concesionarios cuya cantidad en la tabla de DISTRIBUCION está comprendida entre 10 y 18, ambos inclusive. (De otra manera)
select cifc from distribucion where  cantidad between 18 and 10;

#6.- Obtener el cifc de todos los concesionarios cuya cantidad en la tabla de DISTRIBUCION está comprendida entre 10 y 18, ambos inclusive. (De otra manera)
select distinct cifc from distribucion where  cantidad >=10 and cantidad <=18;#distinct permite no repetir dos veces un mismo campo

#7.- Obtener el cifc de todos los concesionarios que han adquirido más de 10 coches o menos de 5.
select distinct cifc from distribucion where cantidad >10 or cantidad <5;#distinct permite no repetir dos veces un mismo campo

#8.- Obtener todos los codcoche de los coches cuyo nombre empiece por ‘C’.
select codcoche, nombre from coches where nombre like 'C%';

#9.- Obtener todos los codcoche de los coches cuyo nombre no contiene ninguna ‘A’.
select codcoche, nombre from coches where nombre not like '%A%';

#10.- Obtener el cifc de todos los concesionarios cuyo número de coches en stock no es nulo.
select distinct cifc from distribucion where cantidad is not null;

#11.- Obtener el cifm y el nombre de las marcas de coches cuya segunda letra del nombre de la ciudad de origen sea una 'I’.
select distinct cifm, nombre from marcas where ciudad like '_I%';

#12.- Aumentar en 5 coches a la cantidad en distribución de los concesionarios que tienen en stock coches con el código 6.
select distinct *, cantidad+5 as 'nueva cantidad' from distribucion where codcoche = '6';

#sumar y contar
select sum(cantidad) from cantidad;
select count(modelo) from coches;

#min
select cifc, min(cantidad) from distribucion;

#max
select cifm, max(cantidad) from distribucion;

select nombre, max(cifm) from marcas;

select nombre, min(cifm) from marcas;

#media
select avg(cantidad) from distribucion;

select * from distribucion;
#suma y separado por distribucion
select  cifc, count(*) from distribucion group by cifc;
#having cifc = 1;

#13.- Obtener el número total de nombre de marcas de coches que son de MADRID.
select ciudad, count(nombre) from marcas where ciudad like 'Madrid';

#14.- Obtener la media de la cantidad de coches que tienen todos los concesionarios.
select avg(cantidad)as Media from distribucion;#AS nombre o ' nombre con espacios'

#15.- Obtener el dni con numeración más alta de todos los clientes de 'MADRID'.
select max(dni)MayorValor from clientes where ciudad like 'Madrid';

#16.- Obtener el dni con numeración mas baja de todos los clientes que han comprado un coche 'BLANCO'.
select min(dni) from ventas where color like 'blanco';

/*17.- Obtener la media de los automóviles que cada concesionario tiene actualmente en stock.
(Para resolver este tipo de problemas hay que pensar en cómo se haría a mano. Para ello, sería necesario dividir la tabla en grupos, estando compuestos cada uno de ellos por tuplas con el mismo valor del atributo CIFC.
Ahora en cada uno de esos grupos se calcularía la media aritmética de su atributo CANTIDAD. Todo eso es posible hacerlo en SQL utilizando las funciones agregadas y GROUP BY).
*/
select cifc, avg(cantidad)Media from distribucion group by cifc;

#18.- ¿Cuántos coches ha vendido cada concesionario?.
select avg(codcoche)'Cantidad de coches vendidos' from ventas group by cifc;

#19.- ¿Cuántos coches de color blanco ha vendido cada concesionario?.
select cifc, count(codcoche) from ventas where color like 'blanco' group by cifc;

#20.- ¿Qué coche es el que más tiene en distribución los concesionarios 1 o 5 en este momento?.
select cifc, max(cantidad) from distribucion  where cifc = 1 or cifc = 5 group by cifc;
select nombre, modelo from coches where codcoche = 14;

#marca del coche cuya marca sea ibiza
select nombre from marcas
where cifm in
			(select cifm 
            from coches
			where nombre like 'Ibiza');
            
#nombre de los clientes que hayan comprado un coche blanco
select nombre from clientes where dni in(
										select dni
                                        from ventas
                                        where color like 'blanco' or color like 'rojo'
);

#21.- Obtener el dni de los clientes que han comprado algún coche a un concesionario de 'MADRID'.
select dni from ventas where cifc in(
								select cifc
								from concesionario
                                where ciudad like 'madrid'
);	

#22.- Obtener los codcoche suministrados por algún concesionario de 'BARCELONA'.
select codcoche from distribucion where cifc in(
												select cifc
                                                from concesionario
                                                where ciudad like 'barcelona'
);

#23.- Obtener el color de los coches vendidos por el concesionario 'ACAR'.
select color from ventas where cifc in(
										select cifc
                                        from concesionario
                                        where nombre like 'acar'
);

#24.- Obtener el codcoche de aquellos coches vendidos a clientes de 'MADRID'.
select codcoche from ventas where dni in(
										select dni
                                        from clientes
                                        where ciudad like 'madrid'
);

#25.- Obtener el codcoche de los coches vendidos por algún concesionario de 'MADRID'.
select codcoche from ventas where cifc in(
										select cifc
                                        from concesionario
                                        where ciudad like 'madrid'
);

#26.- Obtener el nombre y el apellido de los clientes cuyo dni es menor que el del cliente 'JUAN MARTIN'.
select nombre, apellidos 
				from clientes 
				where  dni< (select dni from clientes where nombre like 'juan' and apellidos like 'martin'
);

#27.- Obtener el nombre y el apellido de los clientes cuyo dni es menor que el de los clientes que son de 'BARCELONA'.
select nombre, apellidos 
						from clientes 
                        where dni< all(select dni from clientes where ciudad like 'barcelona' #hay que poner ALL SOME ANY PARA QUE FINCIONE < > MENOR MAYOR
);

#28.- Obtener el nombre y el apellido de los clientes cuyo nombre empieza por 'A' y cuyo dni es mayor que el de los clientes que son de 'MADRID'.
select nombre, apellidos 
						from clientes
                        where nombre like 'A%' and dni 
                        > all(select dni from clientes where ciudad like 'Madrid'
);
                        
#29.- Obtener el nombre y el apellido de los clientes cuyo nombre empieza por 'A' y cuyo dni es mayor que el de ¡ALGUNO! de los clientes que son de 'MADRID'.
select nombre, apellidos from clientes
									where nombre like 'A%' 
                                    and dni > any(select dni from clientes where ciudad like 'madrid'
);

#30.- Obtener el nombre y el apellido de los clientes cuyo nombre empieza por 'A' y 
#cuyo dni es mayor que el de ¡ALGUNO! de los clientes que son de 'MADRID' o menor que el de todos los de 'VALENCIA'.                        
select nombre, apellidos from clientes
									where nombre like 'A%' 
                                    and (dni > any(select dni from clientes where ciudad like 'madrid') 
                                    or dni < all(select dni from clientes where ciudad like 'valencia')
);

#31.- Obtener el nombre y el apellido de los clientes que han comprado como mínimo un coche 'BLANCO' y un coche 'ROJO'.
select nombre, apellidos from clientes 
									where dni in(select dni from ventas where color like 'blanco')
                                    and  dni in(select dni from ventas where color like 'rojo');
                                    
                                    
#32.- Obtener el dni de los clientes cuya ciudad sea la última de la lista alfabética de las ciudades donde hay concesionarios.
select dni from clientes
						where ciudad =(select max(ciudad) from concesionario);
                        
#33.- Obtener el nombre y el modelo de los coches vendidos por algún concesionario de 'BARCELONA'.
select nombre, modelo from coches 
							where codcoche in(select codcoche from ventas
                            where cifc in (select cifc from concesionario where ciudad like 'barcelona')
);

#34.- Obtener todos los nombres y apellidos de los clientes que hayan adquirido algún coche del concesionario 'DCAR'.
select nombre, apellidos from clientes 
							where dni in(select dni from ventas 
							where cifc in(select cifc from concesionario where nombre like 'dcar')
);

#35.- Obtener el NOMBRE y el APELLIDO de los clientes que han adquirido un coche modelo 'GTI' de color 'BLANCO'.
select nombre, apellidos from clientes 
								where dni in(select dni from ventas
                                where codcoche in(select codcoche from coches where modelo like 'gti')
                                 and (dni in (select dni from ventas where color like 'blanco')) 
);         

#36.- Obtener el codcoche de los coches que han sido adquiridos por un cliente de 'MADRID' a un concesionario de 'MADRID'.
select codcoche from ventas 
						where cifc in(select cifc from concesionario where ciudad like 'madrid')
                        and (dni in (select dni from clientes where ciudad like 'madrid'
                        )
);
#37.- Obtener el dni, nombre, apellido y ciudad de los clientes que han adquirido un automóvil a un concesionario que posea actualmente coches en stock del modelo 'GTI'.
/* select dni, nombre, apellidos, ciudad from clientes 
	where dni = any(select dni from ventas where codcoche = any(select codcoche from coches where modelo like 'gti') and cifc = any (select cifc from distribucion where cantidad > 0 )); */
select dni, nombre, apellidos, ciudad from clientes #o asterisco * para mostar todos los campos
												where dni in(select cifc from distribucion 
                                                where codcoche in(select codcoche from coches where modelo = 'gti')
);

#38.- Obtener el nombre, apellido y ciudad de los clientes que han adquirido un automóvil a un concesionario de 'MADRID' que posea actualmente coches en stock del modelo 'GTI'.
/*select *from clientes 
				where dni in (select dni from ventas
                where cifc in (select cifc from concesionario where ciudad like 'madrid'
                where cifc in(select cifc from concesionario where cantidad >0)
);*/
select nombre, apellidos, ciudad from clientes 
										where dni in(select dni from ventas 
										where cifc in (select cifc from concesionario 
										where ciudad like 'madrid' and cifc in (select cifc from distribucion 
                                        where codcoche in(select codcoche from coches 
                                        where modelo = 'gti')))
);
#39.- Obtener el cifc y nombre del concesionario que no sea de 'MADRID' cuya media de vehículos en stock sea la mas alta de todas las medias.
select cifc, nombre from concesionario 
			where ciudad <> 'madrid'and cifc in(select cifc from distribucion group by cifc having avg(cantidad)>= all(select avg(cantidad) from distribucion group by cifc));
#40.- Obtener los nombres de los clientes que no han comprado ningún coche 'ROJO' a ningún concesionario de 'MADRID'.
select nombre from clientes 
			where dni not in (select dni from ventas
            where cifc in select cifc from concesionario 
            where ciudad = 'madrid' and codcoche in (select codcoche from ventas
            where color = 'rojo'));#CORREGIR