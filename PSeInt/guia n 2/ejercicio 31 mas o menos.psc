Algoritmo sin_titulo
	
	definir i Como Entero
	definir num Como Entero
	definir sumapar Como Entero
	
	sumapar=0
	
	escribir "Ingresa un numero para ver la suma de los pares que contiene"
	leer num
	
	Para i <- 0 Hasta num Con Paso 1 Hacer
		
		Si i mod 2 = 0 Entonces
			sumapar = sumapar+i
			
			
		Fin Si
	Fin Para
	
	escribir "La suma de los numeros pares es de ",sumapar,""
	
FinAlgoritmo
