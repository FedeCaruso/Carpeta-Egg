Funcion mues <- impri ( matrix Por Referencia)
	
	definir fila, columna Como Entero
	
	Para fila=0 Hasta 4 Con Paso 1 Hacer
		Para columna=0 Hasta 4 Con Paso 1 Hacer
			escribir Sin Saltar matrix[fila, columna] " "
		Fin Para
		escribir " "
	fin Para
	
Fin Funcion

Funcion resultado <- alea ( n )
	definir matrix, fila, columna Como Entero
	definir mues Como Logico
	dimension matrix[5,5]
	
	Para fila=0 Hasta 4 Con Paso 1 Hacer
		Para columna=0 Hasta 4 Con Paso 1 Hacer
			matrix[fila, columna]= azar (10)
		Fin Para
	Fin Para
	
	escribir " "
	
	mues <- impri ( matrix  )
	
Fin Funcion

Algoritmo sin_titulo
	
	definir resultado Como Entero
	definir n Como Entero
	
	n=0
	
	resultado <- alea ( n )
FinAlgoritmo

