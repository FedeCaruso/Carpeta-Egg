Algoritmo sin_titulo
	//como agrego el maximo y el minimo?
	definir num Como Entero
	definir prom Como Real
	definir sum Como Entero
	definir i Como Entero
	
	sum = 0
	i=-1
	
	Hacer
		
		Escribir "Ingresa un numero o ingresa 0 para finalizar"
		leer num
		sum = sum+num
		i=i+1
	Hasta Que num = 0 
	
	prom = sum/i
	
	Escribir "El promedio de los numeros ingresados es ",prom,""
FinAlgoritmo
