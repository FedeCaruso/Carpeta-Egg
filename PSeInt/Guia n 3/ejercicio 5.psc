Funcion divisores <- EsDivisi ( num )
	definir x Como real
	
	x<-1
	Mientras x < num-1 Hacer
		x=x+1
		Si num mod x = 0 Entonces
			Escribir "El numero ",x," es divisor de ",num,""
		
		Fin Si
	Fin Mientras
	
Fin Funcion

Algoritmo sin_titulo
	
	definir resu Como Entero
	definir num Como Entero
	
	escribir "Ingresa un numero para saber los divisores"
	leer num
	
	resu=EsDivisi (num)
FinAlgoritmo
