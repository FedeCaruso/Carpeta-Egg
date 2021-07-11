Algoritmo sin_titulo
	
	definir mini Como Entero
	definir maxi Como Entero
	definir num Como Entero
	definir i Como Entero
	
	Escribir "Ingresa un numero entero (minimo)"
	leer mini
	
	escribir "Ingresa un numero entero (maximo)"
	leer maxi
	
	escribir "Ahora ingresa un numero entero entre el minimo y el maximo"
	leer num
	
	i=0
	
	Mientras num > mini y num < maxi Hacer
		i=i+1
		
		Escribir "Ingresa un numero entero entre el minimo y el maximo"
		leer num
		
	Fin Mientras
	escribir i
FinAlgoritmo
