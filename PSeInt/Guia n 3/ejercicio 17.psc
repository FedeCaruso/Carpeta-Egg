Funcion resu <- restarHasta ( dividen, divis )
	definir i Como Entero
	
	i=0
	
	Repetir
		i=i+1
		dividen=dividen-divis
	hasta Que dividen < divis
	
	escribir "El cociente de la division es ",i,""
	escribir "El resto de la division es ",dividen,""
	
Fin Funcion

Algoritmo divisionPorResta
	
	definir dividen Como Entero
	definir divis Como Entero
	definir resu Como Logico
	
	escribir "Ingresa el dividendo"
	leer dividen
	
	escribir "Ahora ingresa el divisor"
	leer divis
	
	resu <- restarHasta ( dividen, divis )
FinAlgoritmo
