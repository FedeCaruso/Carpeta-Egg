Funcion secuencia <- Fibonacci ( n )
	
	definir i Como Entero
	definir j Como Entero
	definir k Como Entero
	definir f Como Entero
	
	i=0
	j=1
	
	Para f<-1 Hasta n Con Paso 1 Hacer
		escribir i
		k=i+j
		i=j
		j=k
	Fin Para
Fin Funcion

Algoritmo sin_titulo
	definir n Como Entero
	definir secuencia Como Logico
	
	escribir "Ingresa un numero para ver la serie"
	leer n
	
	secuencia <- Fibonacci ( n )
	
FinAlgoritmo
