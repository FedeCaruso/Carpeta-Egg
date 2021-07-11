select * from estadisticas;
select * from partidos;
select * from jugadores;
select * from equipos;
show columns from estadisticas;
show columns from jugadores;
show columns from equipos;
show columns from partidos;
#1
select Nombre from jugadores
order by Nombre;
#2
select Nombre
from jugadores
where Peso > 200
and Posicion in('c')
order by Nombre;
#3
select Nombre 
from equipos
order by Nombre;
#4
select Nombre
from equipos
where Conferencia in('east');
#5
select Nombre, Ciudad
from equipos 
where ciudad like('c%');
#6
Select j.Nombre 'Jugador', e.Nombre 'Equipo'
from jugadores j, equipos e
where j.Nombre_equipo in(e.Nombre)
order by e.Nombre;
#7
Select j.Nombre 'Jugador', e.Nombre 'Equipo'
from jugadores j, equipos e
where j.Nombre_equipo in(e.Nombre)
and e.Nombre in('raptors')
order by j.Nombre;
#8
select es.Puntos_por_partido, j.Nombre, es.temporada
from estadisticas es, jugadores j
where j.codigo in(es.jugador)
and j.Nombre like('pau g%');
#9
SELECT es.Puntos_por_partido, j.Nombre
FROM jugadores j INNER JOIN estadisticas es
on j.codigo in(es.jugador)
WHERE j.Nombre LIKE('pau g%')
AND es.temporada IN('04/05');
#10
SELECT j.Nombre, sum(es.Puntos_por_partido) 'Total de puntos', j.Nombre_equipo
from jugadores j, estadisticas es
where j.codigo in(es.jugador)
group by Nombre
order by sum(es.Puntos_por_partido) desc;
#11
select j.nombre_equipo'Equipo', count(j.Nombre) 'N* Jugadores'
from jugadores j
group by j.Nombre_equipo;
#12
SELECT j.Nombre, sum(es.Puntos_por_partido) 'Total de puntos', j.Nombre_equipo
from jugadores j, estadisticas es
where j.codigo in(es.jugador)
group by Nombre
order by sum(es.Puntos_por_partido) desc
limit 1;
#13
select e.Nombre, e.Conferencia, e.Division, j.Altura, j.Nombre
from equipos e, jugadores j
where e.Nombre = j.Nombre_equipo
group by j.Nombre
order by j.Altura desc
limit 1;
#14
select sum(es.Puntos_por_partido)'Total puntos', j.Nombre, j.Procedencia
from jugadores j
inner join estadisticas es on j.codigo in(es.jugador)
inner join equipos e on j.Nombre_equipo in(e.Nombre)
where e.Ciudad like('los ang%')
and j.Procedencia like('spai%')
group by e.Ciudad;
#15
select avg(puntos) as 'media puntos D pacific'
from(select sum(puntos_visitante) as puntos
from partidos 
where equipo_visitante in(select nombre
from equipos 
where Division = 'pacific')
union
select sum(puntos_local) as puntos
from partidos 
where equipo_local in(select nombre
from equipos 
where Division = 'pacific')) as dassd;

#16
select equipo_local, equipo_visitante, max(abs(puntos_local - puntos_visitante)) as diferencia
from partidos;
#17

#18






