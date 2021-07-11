Algoritmo sin_titulo
	definir num Como Entero
	definir x Como Entero
	
	x= azar(10)
	Hacer
		
		escribir "Ingresa un numero entre 0 y 10 para adivinar"
		leer num
		
		Si num < x Entonces
			escribir "El numero que buscas es un poco mas grande"
		Fin Si
		
		Si num > x Entonces
			escribir "El numero que buscas es un poco mas chico"
		Fin Si
		
	Hasta Que num = x
	
	escribir "Felicitaciones! el numero era ",x,"!"
FinAlgoritmo
