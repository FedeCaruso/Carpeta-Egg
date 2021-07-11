Funcion primi <- buscaPrimo ( num )
	definir i Como Entero
	definir cont Como Entero
	
	cont=0
	Para i<-1 Hasta num Con Paso 1 Hacer
		
		Si num mod i = 0  Entonces
			cont=cont+1
		
		Fin Si
	Fin Para
	
	Si cont=2 Entonces
		Escribir "El numero ingresado es primo"
	SiNo
		Escribir "El numero ingresado no es primo"
	Fin Si
	
Fin Funcion

Algoritmo sin_titulo
	
	definir primi Como entero
	definir num Como Entero
	
	escribir "Ingresa un numero para saber si es primo"
	leer num
	
	primi <- buscaPrimo ( num )
	
FinAlgoritmo
