Funcion resultado <- buscar_Mayor ( vector Por Referencia, n Por Referencia, i )
	definir num, mayor, resultado Como Real
	num=0
	mayor=0

	Para i=0 Hasta n-1 Con Paso 1 Hacer
		num= vector[i]
		Si num > mayor Entonces
			mayor = vector[i]
		Fin Si
	Fin Para
	resultado=mayor
	escribir "El mayor digito ingresado es: " mayor
Fin Funcion

Algoritmo sin_titulo
	//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el
	//valor más grande del vector.
	
	definir vector Como Entero
	definir n Como Entero
	definir i Como Entero
	definir resultado Como Real
	
	
	escribir "Ingresa el tamanio del vector"
	leer n
	
	dimension vector[n]
	
	escribir "Tu vector tiene un tamanio de: " n ", " "Ingresa los valores uno por uno"
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		leer vector[i]
	Fin Para
	i=0
	resultado <- buscar_Mayor (vector, n, i)
FinAlgoritmo
