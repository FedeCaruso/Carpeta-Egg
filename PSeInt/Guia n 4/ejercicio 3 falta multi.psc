Algoritmo sin_titulo
	definir vector Como Real
	definir n Como Real
	definir i Como Entero
	definir sum Como Real
	definir res Como Real
	definir multi Como Real
	definir aux Como Real
	
	Dimension vector(10)
	
	sum=0
	res=0
	multi=1
	
	Escribir "Dame 10 n reales"
	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		leer vector(i)
	Fin Para
	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		
		aux= vector(i)
		multi= vector(i) * aux
	Fin Para
	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		
		sum= sum + vector(i)
	Fin Para
	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		
		res= res - vector(i)
	Fin Para

	escribir "La suma de los numeros que me diste es: " sum
	escribir "La resta de los numeros que me diste es: " res
	escribir "La multiplicacion de los numeros que me diste es: " multi
	
	
FinAlgoritmo
