Funcion res <- parImpar (num)
	definir res Como Entero
	res<-num mod 2
	
Fin Funcion

Algoritmo sin_titulo
	
	
	definir num Como Entero
	Definir res Como Entero
	
	escribir "Ingresa un numero para determinar si es par o impar"
	leer num
	
	res= parImpar (num)
	
	Si res = 0 Entonces
		Escribir "El numero ingresado es par"
	SiNo
		Escribir "El numero ingresado es impar"
	Fin Si
FinAlgoritmo
