#2.- Me gustaría saber cuantos discos hay de cada tipo de música, ordenados descendentemente (solo quiero los 10 primeros). 

select  t.tipo, count(titulo) Cantidad from tipo t
	join discotipo dt join disco d
    on t.idtipo = dt.idtipo
    and dt.iddisco = d.iddisco group by tipo order by cantidad desc limit 10; 