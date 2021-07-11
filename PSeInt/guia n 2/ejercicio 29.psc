Algoritmo sin_titulo
	definir key Como Caracter
	definir cont Como Entero
	
	cont= 0
	
	Hacer
		
		escribir "Ingresa la clave para acceder al sistema"
		leer key
		cont= cont+1
	Hasta Que cont =3 o key = "eureka"
	
	
	Si cont = 3 Entonces
		escribir "Has ingresado una clave erronea tres veces, adios"
	SiNo
		Escribir "Has ingresado al sistema correctamente"
	Fin Si
	
	
	
FinAlgoritmo
