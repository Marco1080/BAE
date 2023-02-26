/*
5.- Quiero conocer los clientes que han votado con un 10 a algún disco. Para ello me haces un listado del nombre del cliente, el título 
del disco que votó con su intérprete y tipo de música, además del 10 que le ha puesto. El listado me lo haces ordenado por clientes.
*/
select c.nombre,d.titulo, i.Interprete,t.tipo, p.puntuacion from cliente c
	join puntuacion p join disco d join interprete i join discotipo dt join tipo t
    on c.id = p.Idcliente
    and p.iddisco=d.IdDisco
    and d.IdInterprete = i.IdInterprete
    and d.IdDisco = dt.IdDisco
    and dt.IdTipo = t.IdTipo
    and p.Puntuacion = 10 group by p.id order by c.nombre;