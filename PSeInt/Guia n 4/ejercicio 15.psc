Algoritmo sin_titulo
	//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el
	//usuario y los muestre por pantalla.
	
	definir matriz, fila, columna  Como Entero
	
	dimension matriz[3,3]
	escribir " "
	escribir "Ingresa los valores de la matriz" 
	escribir " "
	
	Para fila=0 Hasta 2 Con Paso 1 Hacer
		Para columna=0 Hasta 2 Con Paso 1 Hacer
			escribir "Ingresa la celda" " " fila " " columna
			leer matriz[fila, columna]
		Fin Para
	Fin Para
	
	escribir " "
	
	Para fila=0 Hasta 2 Con Paso 1 Hacer
		Para columna=0 Hasta 2 Con Paso 1 Hacer
			escribir Sin Saltar matriz[fila, columna] " "
		Fin Para
		escribir " "
	Fin Para
FinAlgoritmo
