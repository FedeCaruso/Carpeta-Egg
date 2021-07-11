Algoritmo sin_titulo
	definir palabra, matriz Como Caracter
	definir i, j, cont Como Entero
	dimension matriz[10,10]
	cont=0
	escribir "Dame una palabra"
	leer palabra
	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		Para j=0 Hasta 9 Con Paso 1 Hacer
			matriz[i,j]= subcadena(palabra, cont, cont)
			cont=cont+1
		Fin Para
	Fin Para
	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		Para j=0 Hasta 9 Con Paso 1 Hacer
			escribir Sin Saltar matriz[i,j] " "
		Fin Para
		escribir " "
	Fin Para
FinAlgoritmo
