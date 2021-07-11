Funcion resu <- divi ( numen1, numen2)
	definir resu Como Real
	escribir "ingresa el primer valor entero que quieras dividir"
	leer numen1
	escribir "ingresa el segundo valor entero que quieras dividir"
	Leer numen2
	resu= numen1/numen2
	escribir resu
	
Fin Funcion

Funcion resu <- mult ( numen1, numen2 )
	definir resu Como Real
	escribir "ingresa el primer valor entero que quieras multiplicar"
	leer numen1
	escribir "ingresa el segundo valor entero que quieras multiplicar"
	leer numen2
	resu= numen1*numen2
	Escribir resu
Fin Funcion

Funcion resu <- rest ( numen1, numen2 )
	definir resu Como Real
	escribir "ingresa el primer valor entero que quieras restar"
	Leer numen1
	escribir "ingresa el segundo valor entero que quieras restar"
	leer numen2
	resu= numen1-numen2
	escribir resu
	
Fin Funcion

Funcion resu <- sum ( numen1, numen2 )
	definir resu Como Real
	escribir "ingresa el primer valor entero que quieras sumar"
	leer numen1
	escribir "ingresa el segundo valor entero que quieras sumar"
	leer numen2
	resu= numen1+numen2
	escribir resu
	
Fin Funcion

Algoritmo aritlogic
	definir op Como Caracter
	definir numen1 Como Entero
	Definir numen2 Como Entero
	definir resu Como Real
	
	Escribir "que operacion deseas realizar?"
	escribir "ingresa s para sumar"
	escribir "ingresa r para restar"
	Escribir "ingresa m para multiplicar"
	Escribir "ingresa d para dividir"
	
	leer op
	numen1=0
	numen2=0
	
	Segun op Hacer
		"s": resu= sum (numen1, numen2)
		"r": resu= rest (numen1, numen2)
		"m": resu= mult (numen1, numen2)
		"d": resu= divi (numen1, numen2)
		De Otro Modo:
			escribir "el valor ",op," no corresponde a ninguna operacion :("
	Fin Segun
FinAlgoritmo
