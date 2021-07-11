Funcion resu2 <- impri_suma ( matriz Por Referencia, n1 Por Referencia, n2 Por Referencia)
	
	definir fila, columna, sumapar, sumaim Como Entero
	
	Para fila=0 Hasta n1-1 Con Paso 1 Hacer
		Para columna=0 Hasta n2-1 Con Paso 1 Hacer
			escribir Sin Saltar matriz[fila, columna] " " 
		Fin Para
		escribir " "
	Fin Para
	
	escribir " "
	sumapar=0 
	sumaim=0
	
	Para fila=0 Hasta n1-1 Con Paso 1 Hacer
		Para columna=0 Hasta n2-1 Con Paso 1 Hacer
			Si fila mod 2 =0 y columna mod 2 = 0 Entonces
				sumapar= sumapar + fila
			SiNo
				sumaim= sumaim + fila
			Fin Si
		Fin Para
		escribir " "
	Fin Para
	
	escribir " "
	escribir sumapar
	Escribir " "
	escribir sumaim
Fin Funcion

Funcion resu <- Alea ( n1, n2 )
	
	definir fila, columna, matriz Como Entero
	definir resu2 Como Logico
	Dimension matriz[n1, n2]
	
	Para fila=0 Hasta n1-1 Con Paso 1 Hacer
		Para columna=0 Hasta n2-1 Con Paso 1 Hacer
			matriz[fila, columna]= aleatorio(10, 30)
		Fin Para
	Fin Para
	
	resu2 <- impri_suma (matriz, n1, n2)
Fin Funcion

Algoritmo sin_titulo
	
	definir n1, n2 Como Entero
	definir resu Como Logico
	
	escribir "Dame el numero de filas de la matriz"
	leer n1
	
	escribir " "
	
	escribir "Ahora dame el numero de columnas"
	leer n2
	
	resu <- Alea ( n1, n2 )
	
FinAlgoritmo
//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario)
//realizar un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos
//otro subprograma que calcule y muestre la suma de los números pares y la suma de los
//números impares. Mostrar la matriz y los resultados por pantalla.