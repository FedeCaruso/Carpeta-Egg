Algoritmo sin_titulo
	definir matriz, palab Como Caracter
	definir cont, i, j Como Entero
	escribir "Dame una palabra de 9 letras"
	leer palab
	dimension matriz[3,3]
	cont=0


	Para i=0 Hasta 2 Con Paso 1 Hacer
		Para j=0 Hasta 2 Con Paso 1 Hacer
			matriz[i,j]=SubCadena(palab, cont, cont)
			cont= cont + 1
		Fin Para
	Fin Para
	
	Para i=0 Hasta 2 Con Paso 1 Hacer
		Para j=0 Hasta 2 Con Paso 1 Hacer
			escribir Sin Saltar matriz[i,j] " "
		Fin Para
		escribir " "
	Fin Para
	escribir " "
	
	Para i=0 Hasta 2 Con Paso 1 Hacer
		Para j=0 Hasta 2 Con Paso 1 Hacer
			escribir Sin Saltar matriz[j,i] " "
		Fin Para
		escribir " "
	Fin Para

FinAlgoritmo
