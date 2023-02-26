/*
4.- Quiero tener una lista del top 5 de los más votados, es decir que más clientes le han votado no que tenga más puntos. Dame el título del disco y el número de votos obtenidos.
*/
select d.titulo, count(id)NºVotos from disco d 
	join puntuacion p
    on d.IdDisco = p.IdDisco group by d.titulo order by NºVotos desc limit 5;