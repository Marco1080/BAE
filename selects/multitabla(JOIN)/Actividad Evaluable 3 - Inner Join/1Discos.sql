#1.- Dame los títulos de los discos y la puntuación, a los que “Quinlan Mercado” le ha dado entre 9 y 10 puntos, ordenados descendentemente por puntuación.
select titulo,puntuacion from disco d
	join puntuacion p join cliente c
    on d.idDisco=p.idDisco
    and p.idCliente = c.id
    and c.nombre like 'Quinlan Mercado'
    and p.puntuacion between 9 and 10;


