Algoritmo sin_titulo
	//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	definir vector Como Entero
	definir suma Como Entero
	definir prome Como Real
	definir n Como Entero
	definir i Como Entero
	suma=0
	Escribir "Dame el tamanio del vector"
	leer n
	
	dimension vector(n)
	
	escribir "El vector tiene un tamanio de ",n,". cuales son los valores que contendra el vector?"
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		leer vector(i)
	Fin Para
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		suma=suma + vector(i)
		
	Fin Para
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		prome = suma / n
	Fin Para
	
	Escribir "El promedio es: " prome
FinAlgoritmo
