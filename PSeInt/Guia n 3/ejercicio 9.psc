Funcion sueldo <- calcularSueldo ( nom, day, tur, hs, festi )
	definir sueldo Como Real
	definir i Como Entero
	definir aum Como Real
	
	Si tur= 1 Entonces
		Si festi="s" Entonces
			i=(hs*90)
			aum= i*0.10
			sueldo= i+aum
			escribir "El sueldo correspondiente de ",nom," es de $",sueldo,""
		SiNo
			sueldo= hs*90
			escribir "El sueldo correspondiente de ",nom," es de $",sueldo,""
		Fin Si
	SiNo
		Si festi="s" Entonces
			i=(hs*125)
			aum= i*0.15
			sueldo= i+aum
			escribir "El sueldo correspondiente de ",nom," es de $",sueldo,""
		SiNo
			sueldo= hs*125
			escribir "El sueldo correspondiente de ",nom," es de $",sueldo,""
		Fin Si
	Fin Si
	
Fin Funcion

Algoritmo sin_titulo
	
	definir nom Como Caracter
	definir day Como Caracter
	definir tur Como entero
	definir hs Como Entero
	definir festi Como Caracter
	definir sueldo Como Real
	
	Escribir "Ingresa el nombre del trabajador"
	leer nom
	
	Escribir "Ingresa el dia de la semana"
	leer day
	
	escribir "Cual fue el turno de ",nom," el dia ",day,"? Ingresa 1 o 2 segun corresponda"
	escribir "1: Diurno"
	escribir "2: Nocturno"
	leer tur
	
	escribir "Ingresa la cantidad de horas que trabajo ",nom," el dia ",day,""
	leer hs
	
	escribir "El dia ",day," fue feriado? (s/n)"
	Leer festi
	
	sueldo <- calcularSueldo ( nom, day, tur, hs, festi )
FinAlgoritmo
