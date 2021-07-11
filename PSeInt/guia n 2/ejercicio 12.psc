Algoritmo sin_titulo
	Definir c Como Entero
	Definir fras Como Caracter
	definir i Como Entero
	Escribir "Ingresa una frase que comience con la letra A"
	Leer fras
	
	
	si Subcadena(fras, 0,0)= "A" Entonces
		escribir "Correcto"
		
	SiNo
		Escribir "Incorrecto"
	FinSi
	
	i= Longitud(fras)
	
	
	Para c<-0 Hasta i Con Paso 1 Hacer
		si c=i Entonces
			escribir "Correcto"
		SiNo
			Escribir "Incorrecto"
		FinSi
	Fin Para



	
FinAlgoritmo
