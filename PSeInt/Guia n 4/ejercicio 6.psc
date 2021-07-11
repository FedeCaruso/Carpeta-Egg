Funcion resultado <- buscar_valor ( n, i, vector )
	definir cont Como Entero
	definir vaalor Como Entero
	cont=0
	
	Escribir "Ingresa el valor que quieras buscar y yo te digo su posicion"
	leer vaalor
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		cont=cont+1
		Si vector[i] = vaalor Entonces
			escribir "El valor " vaalor " se encuentra en la posicion " cont
		SiNo
			escribir "no se encuentra"
		Fin Si
		
	Fin Para
	

Fin Funcion

Algoritmo sin_titulo
	Definir n Como Entero
	definir i Como Entero
	definir vector Como Entero
	
	definir resultado Como Logico
	
	Escribir "Dame el tamanio del vector"
	leer n
	
	dimension vector[n]
	
	Escribir "Tu vector tiene un tamanio de: " n ". Dame los valores correspondientes"
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		leer vector[i]
	Fin Para
	
	i=0
	
	resultado <- buscar_valor ( n, i, vector )
FinAlgoritmo
