select * from fabricante;
select * from producto;
select * from producto p, fabricante f
where f.codigo = p.codigo_fabricante;
#todos los productos de la tabla producto
select nombre 
from producto;
select nombre, precio
from producto;
#precio en usd y euros
select nombre, precio, (precio*0.011) 'Precio en USD', (precio*0.0087) 'Precio en euros'
from producto;
#nombres en mayuscula
select upper(nombre), precio 
from producto;
#nombres de los fabricantes y primeras dos letras en mayus
select nombre, upper(substring(nombre, 1, 2)) as '2 caracteres'
from fabricante;
#redondeo precios
select nombre, round(precio) as 'Redondeado'
from producto;
#para truncar un numero se pone la cantidad de decimales deseada
select nombre, truncate(precio,0) 'trunco'
from producto;

#codigo de los fabricantes con productos en la tabla prod
select f.codigo, count(*) 'n de productos'
from fabricante f, producto p
where f.codigo=p.codigo_fabricante
group by f.codigo;
#nombre fab ascendente
select nombre
from fabricante
order by nombre asc;
#ordenar por nombre
select nombre, precio
from producto
order by nombre;
#precio desc
select nombre, precio
from producto
order by precio desc;
 #5 primeras filas de la tabla fabricante
 select*
 from fabricante
 where codigo < 6;
 #nombre y precio del producto mas barato con order by y limit
 select nombre, precio
 from producto
 order by precio
 limit 1;
 #nombre y precio del producto mas caro con order by y limit
 select nombre, precio
 from producto
 order by precio desc
 limit 1;
 #nombre de prod cuyo n de fabricante = 2
 select nombre
 from producto 
 where codigo_fabricante = 2;
 #productos precio <= 120
 select nombre, precio
 from producto
 where precio <= 120;
 #rango sin between;
 select nombre, precio
 from producto 
 where precio >= 80 
 and precio <= 300
 order by precio;
 #rango con between
 select nombre, precio
 from producto
 where precio between 60 and 200
 order by precio;
 #listar prod con codigo 1, 3 o 5 sin in
 select nombre, codigo_fabricante
 from producto
 where codigo_fabricante = 1
 or codigo_fabricante = 3
 or codigo_fabricante = 5;
#listar prod con codigo 1, 3 o 5 con in
select nombre, codigo_fabricante
from producto
where codigo_fabricante in(1,3,5);
#precio en centimos
select nombre, precio, (precio*100) 'Centimos'
from producto
order by precio;
#nombres de fabricantes con 4 caracteres
select nombre
from fabricante
where char_length(nombre) = 4;
#productos con la cadena 'portatil' en el nombre
select nombre
from producto
where lower(nombre) like '%portatil%';
#muestro nombre de p, precio de p y nombre de f
select p.nombre 'Producto', p.precio, f.nombre 'Fabricante'
from producto p, fabricante f
where p.codigo_fabricante = f.codigo
order by f.nombre;
#código del producto, nombre del producto, código del
#fabricante y nombre del fabricante
select p.codigo'Codigo producto', p.nombre'Nombre producto', f.codigo'Codigo fabricante', f.nombre'Nombre fabricante'
from producto p, fabricante f
where f.codigo = p.codigo_fabricante;
#nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
select p.nombre'Nombre producto', p.precio'Precio', f.nombre'Nombre fabricante'
from producto p, fabricante f
where p.codigo_fabricante = f.codigo
order by precio
limit 1;
#todos los p del f 'Lenovo'
select p.*, f.nombre'Nombre fabricante'
from producto p, fabricante f
where p.codigo_fabricante = f.codigo
and lower(f.nombre) = 'lenovo';
#lista de todos los p del f 'Crucial' que tengan un precio mayor que $200.
select p.*, f.nombre'Nombre fabricante'
from producto p, fabricante f
where p.codigo_fabricante = f.codigo
and lower(f.nombre) in('crucial')
and p.precio > 200;
#todos los p de los f 'Asus', 'Hewlett-Packard' y 'Seagate'. Sin utilizar el operador IN.
select p.*, f.nombre'Nombre fabricante'
from producto p, fabricante f
where (p.codigo_fabricante = f.codigo)
and (f.nombre = 'asus')
or (p.codigo_fabricante = f.codigo)
and f.nombre = 'hewlett-packard'
or (p.codigo_fabricante = f.codigo) 
and f.nombre = 'seagate';
#igual pero con IN 
select p.*, f.nombre'Nombre fabricante'
from producto p, fabricante f
where (p.codigo_fabricante = f.codigo)
and f.nombre in('asus', 'hewlett-packard', 'seagate');
#Devuelve nombre de p, precio y nombre de f, de todos los productos que tengan un precio mayor o igual a $180. Ordene el resultado
#en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)
select p.nombre'Nombre producto', p.precio'Precio producto', f.nombre'Nombre fabricante'
from producto p, fabricante f
where p.codigo_fabricante = f.codigo
and p.precio >= 180
order by p.nombre;

select p.nombre'Nombre producto', p.precio'Precio producto', f.nombre'Nombre fabricante'
from producto p, fabricante f
where p.codigo_fabricante = f.codigo
and p.precio >= 180
order by p.precio desc;
#RIGHT JOIN y LEFT JOIN
#traigo f y p
select * 
from fabricante f
left join producto p
on p.codigo_fabricante = f.codigo;
#traigo solo los f que no tienen p
select *
from fabricante f
left join producto p
on p.codigo_fabricante = f.codigo
where p.nombre is null;
#todos los p del f 'lenovo' sin usar INNER JOIN
select p.*, f.nombre
from producto p, fabricante f
where p.codigo_fabricante = f.codigo
and f.nombre in('lenovo'); 
#todos los p q tienen el mismo precio q el p mas caro de 'lenovo'
select * 
from producto
where precio > (select max(precio) from producto where codigo_fabricante=2);

select p.*
from producto p
inner join fabricante f
on p.codigo_fabricante = f.codigo
where f.nombre ='lenovo'
order by p.precio desc
limit 1;

#p mas caro de 'lenovo'
select nombre, precio
from producto
where codigo_fabricante =2
order by precio desc
limit 1;
 #todos los p 'asus' que superan el promedio de precio
 select p.nombre
 from producto p
 inner join fabricante f
 on f.codigo = p.codigo
 where lower(f.nombre) ='asus'
 and p.precio > (select avg(precio) from producto);
#p mas caro de la tabla p --------------------- hay que usar all y any pero no me salio ------------------------
select p.nombre, p.precio
from producto p
where precio > any
(select precio
from producto);

#---------------------------------------------- IN y NOT IN --------------------------------------------

Select f.nombre
from fabricante f, producto p
where f.codigo=p.codigo_fabricante
and p.codigo_fabricante in(1,2,3,4,5,6,7,8,9)
group by f.nombre;








