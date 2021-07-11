Algoritmo sin_titulo
	definir val Como Entero
	Definir val2 Como Entero
	definir sum Como Entero
	Escribir "Ingresa un valor limite"
	leer val
	
	escribir "Ingresa un numero entero por debajo del limite"
	leer val2
	 
	
	
	Mientras val2 <= val Hacer
		
		
		
		escribir "Ingresa otro numero entero por debajo del limite"
		leer sum
		
		val2=sum+val2
		
		
	Fin Mientras
	escribir "el total supero el limite de ",val," que ingresaste en un principio. La sumatoria fue de ",val2,""
FinAlgoritmo
