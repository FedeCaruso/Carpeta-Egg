Funcion clave <- login ( key, usu )
	definir cont Como Entero
	cont= 0
	
	Hacer
		
		escribir "Ingresa el usuario para acceder al sistema"
		leer usu
		escribir "Ingresa la clave"
		leer key
		cont= cont+1
	Hasta Que cont =3 o (key = "asdasd" y usu = "usuario1")
	
	
	Si cont = 3 Entonces
		escribir "te pasaste de intentos, capoeira"
	SiNo
		Escribir "Ingresaste al sistema tefe licito"
	Fin Si
Fin Funcion

Algoritmo sin_titulo
	definir clave Como Caracter
	definir key Como Caracter
	definir usu Como Caracter
	
	key= ""
	usu= ""
	
	clave <- login (key, usu)

FinAlgoritmo
