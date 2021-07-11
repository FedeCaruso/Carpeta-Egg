Algoritmo sin_titulo
	
	Definir fras, resu Como Caracter
	definir i Como Entero
	
	Escribir "Ingresa una frase que comience y termine con la letra a"
	Leer fras
	
	resu= resultado (fras)
	
	
	i= Longitud(fras)
	
	Si Subcadena(fras,0,0) = Subcadena(fras, i-1, i-1) Entonces
		escribir "son iguales"
	SiNo
		escribir "La frase no empieza o no termina con a"
	Fin Si
	


	
FinAlgoritmo


Funcion verif= resultado (fras)
	si Subcadena(fras, 0,0)= "a" Entonces
		escribir "Correcto"
		
	SiNo
		Escribir "Incorrecto"
	FinSi
FinFuncion
	
