Funcion Coordenadas <- BuscameAca ( matriz Por Referencia, j Por Referencia, i Por Referencia )
	definir val Como Entero
	
	escribir "Que valor queres buscar (20/99)?"
	leer val
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
       
		Para j=0 Hasta 4 Con Paso 1 Hacer
			
			Si val=matriz[i,j] Entonces
				escribir "el valor " val " se encuentra en la fila " i+1 " columna " j+1
			Fin Si
			
			
		Fin Para
	Fin Para
	
Fin Funcion

funcion dameMatriz <- AleatoriamenteCulo ( 5 Por Referencia, 5 Por Referencia )
	
	definir Coordenadas Como Logico
	definir matriz, i, j Como Entero
	dimension matriz[5, 5]
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 4 Con Paso 1 Hacer
			matriz[i, j]= Aleatorio(20, 99)
		Fin Para
		
	Fin Para
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 4 Con Paso 1 Hacer
			escribir Sin Saltar matriz[i, j] " "
		Fin Para
		escribir " "
	Fin Para
	
	Coordenadas <- BuscameAca ( matriz, j, i)
	
FinFuncion

Algoritmo sin_titulo
	
	definir dameMatriz como logico
	definir i, j como entero
	
	dameMatriz <- AleatoriamenteCulo ( 5, 5 )
	
FinAlgoritmo
//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por
//el usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra.
//En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.