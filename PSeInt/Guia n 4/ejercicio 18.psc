Funcion transp <- dameTransupuesta ( matriz Por Referencia, i Por Referencia, j Por Referencia, fila Por Referencia, columna Por Referencia )
	
	Escribir " "
	Escribir "Matriz transpuesta: "
	Escribir " "
	Para i=0 Hasta columna-1 Con Paso 1 Hacer
		Para j=0 Hasta fila-1 Con Paso 1 Hacer
			escribir Sin Saltar matriz[j, i] " "
		Fin Para
		escribir " " 
	Fin Para
Fin Funcion

Funcion relleno <- dameAleat ( fila Por Referencia, columna Por Referencia, matriz Por Referencia )
	
	definir i, j Como Entero
	definir transp Como Logico
	
	Para i=0 Hasta fila-1 Con Paso 1 Hacer
		Para j=0 Hasta columna-1 Con Paso 1 Hacer
			matriz[i,j]= Aleatorio(10, 99)
		Fin Para
	Fin Para
	
	Para i=0 Hasta fila-1 Con Paso 1 Hacer
		Para j=0 Hasta columna-1 Con Paso 1 Hacer
			escribir Sin Saltar matriz[i, j] " "
		Fin Para
		escribir " " 
	Fin Para
	
	transp <- dameTransupuesta ( matriz, i, j, fila, columna)
	
Fin Funcion

Algoritmo sin_titulo
	
	definir fila, columna, matriz, relleno Como Entero
	
	escribir "Dame el numero de filas"
	leer fila 
	
	escribir "Dame el numero de columnas"
	leer columna
	
	dimension matriz[fila, columna]
	
	relleno <- dameAleat ( fila, columna, matriz )
	
FinAlgoritmo
//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario),
//llenarla con números aleatorios entre 1 y 100 y mostrar su traspuesta.