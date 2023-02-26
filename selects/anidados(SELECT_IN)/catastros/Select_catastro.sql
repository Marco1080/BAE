#1.- Obtener todos los propietarios de un piso pequeño (entre 50 y 70 metros) en el bloque de casas de la calle Damasco, número 20. Ordenados por apellidos.
select dni "D.N.I", nombre_persona "Nombre",
	apellidos_persona "Apellidos"
    from persona
    where dni in(select dni_p
    from piso
    where calle = "Damasco" and numero = 20
    and metros_p between 50 and 70
    )order by apellidos_persona;
    
#2.- Nombre y apellidos de los propietarios de una casa en la zona centro
select nombre_persona, apellidos_persona
	from persona
	where dni in(select dni_cp from casaparticular
	where(calle, numero) in(select calle, numero 
    from vivienda 
    where nombre_zona = 'centro'))or dni in(select dni_p 
		from piso 
		where metros_p in(select max(metros_p)
        from piso));
        
#3.- ¿Cuántos propietarios de una casa particular o un piso son hombres y cuántos mujeres?
select od_persona as 'sexo', count(dni) as cantidad from persona 
    where dni in (select dni_cp 
    from casaparticular) or dni in(select dni_p 
    from piso) group by od_persona;
    
#4.- Obtener el DNI, nombre y apellidos de todos los propietarios de una casa en la zona Sector Sur y que sea García alguno de sus apellidos.
select dni, nombre_persona, apellidos_persona 
	from persona where apellidos_persona like '%García%'
	and dni in(
	select dni_cp 
	from casaparticular 
	where(calle, numero) in(select calle, numero 
	from vivienda where nombre_zona = 'sector sur'));
    
#5.- Obtener información de los metros cuadrados totales de los solares de cada zona urbana del municipio
#que sean mayores que la zona urbana denominada 'Brillante'. Ordenarlo por metros de mayor a menor.
    select nombre_zona "zona urbana", sum(metros)'metros'
		from vivienda
        group by nombre_zona
        having sum(metros)>
        (select sum(metros) from viviendas where nombre_zona like 'brillante')order by metros desc;
        
#6.- Crea una consulta que muestre los datos y el coste de cada vivienda en función de los metros cuadrados que tiene, teniendo en cuenta que el precio del metro cuadrado está a 1500€.
#Sólo quiero información de las viviendas que tienen más metros que alguna de las casas de la zona denominada 
#'Brillante' y menos que todas las casas de la zona llamada 'Trasierra'.
select calle, numero, metros, nombre_zona nombre, metros*1500 precio
		from vivienda
		where metros > any(
		select metros
		from vivienda where nombre_zona like 'brillante')
    and metros < all
		(select metros from vivienda where nombre_zona like 'transierra');
#Evaluable

#1.- Obtener todas las viviendas que tengan más metros que los metros que tienen los bloques, ordenadas de mayor a menor.

#2.- ¿En qué zona urbana están las viviendas más grandes del municipio?
select nombre_zona as 'zona urbana'
	from vivienda
    group by nombre_zona
    order by avg(metros) desc limit 1;