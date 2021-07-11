Algoritmo sin_titulo
	Definir cadena1 Como Caracter
	definir cadena2 Como Caracter
	definir palab Como Caracter
	Definir result Como Entero
	
	Escribir "Ingresa una palabra"
	leer palab
	
	cadena1= "!"
	cadena2= "?"
	result= Longitud(palab)
	
	si Longitud(palab)= 4 Entonces
		Escribir "", palab,"",cadena1,""
	sino 
		Escribir "", palab,"",cadena2,""
	FinSi
FinAlgoritmo
