

Funcion resu <- buscarImpar ( n )
	definir i Como Real
	definir x Como Real
	definir resupar Como Logico
	i=0
	x=0
	
	Mientras n > 0 Hacer
		i=n mod 10
		Si i mod 2 <> 0 Entonces
			
			escribir "El numero ",i," es impar"
			
			n= trunc (n/10)
			
		SiNo
			escribir "El numero ",i," es par"
			n= trunc (n/10)
		Fin Si
		
	Fin Mientras
	
	
	
	
Fin Funcion

Algoritmo sin_titulo
	
	
	Definir n Como Entero
	definir resu Como Logico
	
	escribir "Ingresa un numero para ver si todos sus digitos son impares"
	leer n
	
	resu <- buscarImpar ( n )
	
FinAlgoritmo
