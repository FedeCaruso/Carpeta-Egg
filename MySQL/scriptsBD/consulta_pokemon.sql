show tables from pokemondb;
show columns from pokemon;
show columns from tipo;
show columns from pokemon_tipo;
show columns from estadisticas_base;
show columns from evoluciona_de;
show columns from movimiento;
select* from movimiento
where descripcion like('causa%');
#1
select nombre from pokemon;
#2
select nombre
from pokemon
where peso < 10;
#3
select p.nombre, t.nombre
from pokemon p, tipo t, pokemon_tipo pt
where p.numero_pokedex = pt.numero_pokedex
and pt.id_tipo = t.id_tipo
and t.nombre = 'agua';
#4
select p.nombre, t.nombre tipo
from pokemon p, tipo t, pokemon_tipo pt
where p.numero_pokedex = pt.numero_pokedex
and pt.id_tipo = t.id_tipo
and t.nombre in('agua', 'fuego', 'tierra')
order by t.nombre;
#5
select p.nombre, t.nombre
from pokemon p, tipo t, pokemon_tipo pt
where p.numero_pokedex = pt.numero_pokedex
and pt.id_tipo = t.id_tipo
and t.nombre in('fuego', 'volador');
#6
select p.nombre, eb.ps
from estadisticas_base eb, pokemon p
where eb.numero_pokedex = p.numero_pokedex
and eb.ps > 200;
#7
select p.*
from pokemon p, evoluciona_de ed
where ed.pokemon_origen = p.numero_pokedex
and ed.pokemon_evolucionado =(select numero_pokedex from pokemon where nombre = 'arbok');
#8
select p.numero_pokedex, p.nombre
from pokemon p, pokemon_forma_evolucion pfe, 
forma_evolucion fe, tipo_evolucion te
where p.numero_pokedex = pfe.numero_pokedex 
and pfe.id_forma_evolucion = fe.id_forma_evolucion
and fe.tipo_evolucion = te.id_tipo_evolucion
and lower(te.tipo_evolucion) = 'intercambio';
#9
select nombre
from movimiento
where prioridad = (select max(prioridad) from movimiento);
#10
select nombre, peso
from pokemon
where peso = (select max(peso) from pokemon);
#11
select m.nombre movimiento, t.nombre, m.potencia
from movimiento m, tipo t
where m.id_tipo = t.id_tipo
and m.potencia = (select max(potencia) from movimiento);
#12
select count(m.nombre) as 'N movimientos', t.nombre as 'Tipo movimiento'
from movimiento m, tipo t
where m.id_tipo = t.id_tipo
group by t.nombre;
#13
select m.nombre
from movimiento m, movimiento_efecto_secundario mes, efecto_secundario es
where mes.id_efecto_secundario = es.id_efecto_secundario
and mes.id_movimiento = m.id_movimiento
and es.efecto_secundario like('envene%');
#14
select nombre as movimiento, descripcion
from movimiento
where descripcion like('causa%')
order by nombre;
#15
select m.nombre
from movimiento m, pokemon p, pokemon_movimiento_forma pmf
where m.id_movimiento = pmf.id_movimiento
and p.numero_pokedex = pmf.numero_pokedex
and p.nombre = 'pikachu';
#16
select m.nombre
from movimiento m, pokemon p, pokemon_movimiento_forma pmf, forma_aprendizaje fa, tipo_forma_aprendizaje tfa
where m.id_movimiento = pmf.id_movimiento
and p.numero_pokedex = pmf.numero_pokedex
and pmf.id_forma_aprendizaje = fa.id_forma_aprendizaje
and tfa.id_tipo_aprendizaje = fa.id_tipo_aprendizaje
and p.nombre = 'pikachu'
and tfa.tipo_aprendizaje = 'mt';
#17
select m.nombre as Ataque, t.nombre as Tipo
from movimiento m, pokemon p, pokemon_movimiento_forma pmf, forma_aprendizaje fa, tipo_forma_aprendizaje tfa, tipo t
where m.id_movimiento = pmf.id_movimiento
and p.numero_pokedex = pmf.numero_pokedex
and pmf.id_forma_aprendizaje = fa.id_forma_aprendizaje
and tfa.id_tipo_aprendizaje = fa.id_tipo_aprendizaje
and t.id_tipo = m.id_tipo
and p.nombre = 'pikachu'
and tfa.tipo_aprendizaje = 'nivel'
and t.nombre = 'normal';
#18
select m.nombre
from movimiento m, movimiento_efecto_secundario mes
where mes.id_movimiento = m.id_movimiento
and mes.probabilidad > 30;









