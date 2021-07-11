Funcion resu <- intercambiaValor ( n1 Por Referencia, n2 Por Referencia, aux Por Referencia )
	
	aux= n1
	n1=n2
	n2=aux
Fin Funcion

Algoritmo sin_titulo
	definir aux Como Entero
	definir resu Como Logico
	definir n1 Como Entero
	definir n2 Como Entero
	
	escribir "Ingrese el primer numero"
	leer n1
	
	Escribir "Ingrese el segundo numero"
	leer n2 
	
	resu <- intercambiaValor ( n1, n2, aux )
	
	escribir "el valor de n1 es ",n1,""
	escribir "el valor de n2 es ",n2,"" 
FinAlgoritmo
