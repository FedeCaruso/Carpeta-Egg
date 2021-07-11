Funcion res <- EsMultiplo ( n1, n2 )
	definir res Como real
	
	Si n1 >= n2 Entonces
		res=n1/n2
		Si res = 0 Entonces
			Escribir "El primer numero ingresado es multiplo del segundo"
		SiNo
			escribir "El primer numero ingresado no es multiplo del segundo"
		Fin Si
	SiNo
		escribir "El primer numero ingresado es menor que el segundo nose puede :("
	Fin Si
	
FinFuncion


Algoritmo sin_titulo
	
	definir res Como Entero
	definir n1, n2 Como Entero
	
	escribir "Ingresa el primer numero"
	leer n1
	
	escribir "Ingresa el segundo numero"
	Leer n2
	
	
	res <- EsMultiplo(n1,n2)
	
	
FinAlgoritmo
