Algoritmo sin_titulo
	definir frase Como Caracter
	definir taman Como Entero
	definir i Como entero
	definir j Como Caracter
	
	Escribir "Ingresa una palabra o frase"
	Leer frase
	
	taman= Longitud(frase)
	
	Para i<-0 Hasta taman Hacer
		
		j=SubCadena(frase,i,i)
		Escribir Sin Saltar j " "
		
	Fin Para
	
	
	Para i<-taman Hasta 0 Hacer
		
		j=SubCadena(frase,i,i)
		Escribir Sin Saltar j " "
		
	Fin Para
	
FinAlgoritmo
