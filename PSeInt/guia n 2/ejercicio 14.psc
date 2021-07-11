Algoritmo TeLlevoaTodosLados
	
	definir resp Como Caracter
	Definir lt Como Entero
	Definir ltprecio Como Real
	Definir hs Como Entero
	definir min Como Entero
	definir minprecio Como Real
	definir preciototal Como Real
	
	Escribir "Bienvenido de vuelta! El alquiler comenzo hace mas de dos horas? s/n" 
	leer resp
	
	si resp= "n" Entonces
		Escribir "Genial! tu tarifa a pagar sera de $400. La nafta va de regalo!"
	SiNo
		escribir "Ingresa la cantidad de litros de nafta consumidos"
		leer lt
		
		Escribir "Ingresa el tiempo transcurrido en horas"
		leer hs
		
		ltprecio= lt*40
		
		min= hs*60
		
		minprecio= min*5.20
		
		preciototal= ltprecio+minprecio
		
		Escribir "El importe a pagar es de ", preciototal,""
	
	FinSi
	
FinAlgoritmo
