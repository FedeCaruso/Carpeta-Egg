Funcion resto <- digi ( n )
	definir s Como Real
	definir d Como Real
	
	s=0
	Mientras n>0 Hacer
		d= n % 10
		s=s+d
		n= trunc (n/10)
	Fin Mientras
	escribir "la suma de los digitos es ",s,""
Fin Funcion

Algoritmo sin_titulo
	definir s Como Real
	definir d Como Real
	definir n Como Entero
	definir resto Como Entero

	
	escribir "Ingresa un numero para sumar sus digitos"
	leer n
	
	resto= digi (n)
	
FinAlgoritmo
