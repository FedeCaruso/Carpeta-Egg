Algoritmo sin_titulo
	definir num Como Entero
	definir preg Como Caracter
	definir i Como Entero
	
	i=0
	
	Hacer
		
		escribir "Ingresa un numero entero (positivo)" 
		leer num
		
		i=i+num
		
		escribir "Desea ingresar otro numero? (s/n)"
		leer preg
		
		
	Hasta Que preg = "n"
	
	escribir "La suma de los numeros ingresados es de ",i,""
	
FinAlgoritmo
