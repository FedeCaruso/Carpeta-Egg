select * from empleados;
select * from departamentos;
#obtengo secretarias de la tabla empleados
select * from empleados where cargoE = 'Secretaria';
#obtengo ciertas entradas de la tabla empleados
select nombre, salEmp
from empleados;
#obtengo vendedores y los ordeno alfabeticamente
select * from empleados where cargoE = 'Vendedor'
order by nombre asc;
#obtengo varios campos y los ordeno por el salario de menor a mayoe
select nombre, cargoE
from empleados
order by salEmp asc;
#consulto salario y comision de empleados del depto 2000
select salEmp, comisionE
from empleados
where idDepto = 2000;
#todas las comisiones
select comisionE
from empleados;
#le sumo 500 de bonificacion a los del dpto 3000
select nombre, salEmp, (salEmp+500) as bonificacion
from empleados
where idDepto = 3000
order by nombre asc;
#lista de empleados que ganan comision superior a sueldo
select nombre, salEmp, comisionE 
from empleados
where comisionE > salEmp
order by nombre asc;
#menor al 30 % de su sueldo
select nombre, salEmp, comisionE
from empleados
where comisionE <= salEmp*0.3
order by comisionE asc;
select nombre as Nombre, cargoE as Cargo
from empleados;
#nombres entre j y z --por que me tome directamente la primer letra?
select nombre, cargoE
from empleados 
where lower(nombre) > 'j' and lower(nombre) < 'z'
order by nombre asc;
#suma salario con comision de los q comi > 1000
select nombre, salEmp, comisionE, (salEmp+comisionE) as salarioTotal
from empleados
where comisionE > 1000
order by nombre asc;
#empleados sin comision
select nombre, salEmp, comisionE, (salEmp+comisionE) as salarioTotal
from empleados
where comisionE = 0
order by nombre asc;
#nombres que no contengan la cadena MA
select nombre 
from empleados 
where lower(nombre) not like '%ma%'
order by nombre asc;
#nombre de deptos que no sean ventas investigacion ni mantenimiento
select nombreDpto
from departamentos
where lower(nombreDpto)  not in ('ventas', 'investigacion', 'mantenimiento');

#
select e.nombre, d.nombreDpto 
from empleados e, departamentos d 
where e.idDepto=d.idDepto or lower(e.cargoE)='secretaria' and lower(e.cargoE)='vendedor'
and lower(d.nombreDpto)<>'produccción' and e.salEmp > 1000 
order by e.fecIncorporacion;
#empleados 11 caracteres
select *
from empleados 
where char_length(nombre) = 11;
#empleados de 11 caracteres o mas
select *
from empleados 
where char_length(nombre) >= 11;
#datos de empleados q empiezan con m y cobran + 800
select e.*, d.nombreDpto
from empleados e, departamentos d
where e.idDepto=d.idDepto
and lower(e.nombre) like 'm%'
and (e.salEmp > 800 or e.comisionE > 0)
and lower(d.nombreDpto) = 'ventas';
#salario mas alto
select *, (max(salEmp)) as 'salario mas alto'
from empleados;
#ultimo alfabeticamente
select max(nombre) as 'ultimo alfabeticamente'
from empleados;
#salario mas alto, mas bajo y diferencia
select min(salEmp) as 'Salario mas bajo', 
	   max(salEmp) as 'Salario mas alto', 
	   max(salEmp) - min(salEmp) as 'Diferencia'
from empleados; 
#genero cantidad genero pox cada dpto
select idDepto, sexemp,  count(*) 
from empleados 
group by idDepto, sexemp;
#promedio salario de cada dpto
select nombreDpto, (avg(salEmp)) as 'salario promedio'
from empleados e, departamentos d
where e.idDepto in(d.idDepto);
select e.nombre, d.nombreDpto
from empleados e INNER JOIN departamentos d ON e.idDepto=d.idDepto
where e.salEmp>= (select avg(salemp) from empleados)
group by d.nombreDpto;
#lista de los q cobran mas que el promedio de la empresa
select e.nombre, d.nombreDpto, e.salEmp
from empleados e, departamentos d 
where e.idDepto = d.idDepto
and e.salEmp >= (select avg(salEmp) from empleados)
order by d.nombreDpto;
#lista los departamentos que tienen mas de 3 empleados
select d.nombreDpto, count(*) 'n empleados', d.idDepto
from empleados e, departamentos d
where d.idDepto = e.idDepto
group by d.nombreDpto
having count(*) >= 3;
#departamentos sin empleados
select d.nombreDpto, count(*) 'empleados'
from empleados e, departamentos d 
where d.idDepto = e.idDepto
group by d.nombreDpto
having count(*) =0;
#departamento con mayor salario
select d.nombreDpto, sum(e.salEmp)
from departamentos d, empleados e
where d.idDepto = e.idDepto
group by d.nombreDpto
order by sum(e.salEmp) desc
limit 1;
select d.idDepto, d.nombreDpto 
from departamentos d, empleados e 
where d.codDepto=e.codDepto 
group by d.codDepto 
having count(*) = 0;


