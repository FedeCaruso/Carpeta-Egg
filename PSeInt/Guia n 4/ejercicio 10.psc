Algoritmo sin_titulo
	definir vec, fras Como caracter
	dimension vec[20]
	definir taman, i Como Entero
	
	escribir "Escribi algo aqui "
	leer fras 
	
	taman=longitud (fras)
	
	
	Para i=0 Hasta 19 Con Paso 1 Hacer
		vec[i]= Subcadena(fras, i, i)
	Fin Para
	
	Para i=0 Hasta 19 Con Paso 1 Hacer
		escribir sin saltar vec[i] " "
	Fin Para
	escribir " "
FinAlgoritmo
