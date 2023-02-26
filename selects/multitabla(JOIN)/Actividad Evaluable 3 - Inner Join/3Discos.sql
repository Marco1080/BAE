/*
3.- Quiero ver “los_peores” de modo que se pueda obtener rápidamente el título de los discos, sus intérpretes, el tipo de música y la puntuación máxima que ha obtenido en las votaciones. 
Como son los peores valorados quiero que salgan sólo los que han tenido como máxima puntuación menos de 3 puntos, ordenados por puntuación descendentemente.
*/
select  d.titulo, i.Interprete, t.tipo,p.puntuacion from disco d
	join interprete i join puntuacion p join discotipo dt join tipo t
    on d.IdInterprete = i.IdInterprete
    and d.IdDisco = p.iddisco
    and d.IdDisco = dt.IdDisco
    and dt.IdTipo = t.IdTipo 
    group by d.titulo  having max(p.puntuacion) < 3 order by p.puntuacion desc
;
select * from disco;