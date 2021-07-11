
//Crear un vector que contenga 100 notas con valores entre 0 y 20 generadas
//aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt. Luego, de
//acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
	//a) Deficientes 0-5
	//b) Regulares 6-10
	//c) Buenos 11-15
	//d) Excelentes 16-20

Algoritmo sin_titulo
	definir cont1 Como Entero
	definir cont2 Como Entero
	definir cont3 Como Entero
	definir cont4 Como Entero
	definir i Como Entero
	definir vector Como Entero
	
	cont1=0
	cont2=0
	cont3=0
	cont4=0
	dimension vector[100]
	
	Para i=0 Hasta 99 Con Paso 1 Hacer
		vector[i]= azar (20)
		escribir Sin Saltar vector[i] ". "
		Si vector[i] >= 0 y vector[i] <= 5 Entonces
			cont1=cont1+1
		Fin Si
		Si vector[i] >= 6 y vector[i] <= 10  Entonces
			cont2=cont2+1
		Fin Si
		Si vector[i] >= 11 y vector[i] <= 15 Entonces
			cont3=cont3+1
		Fin Si
		Si vector[i] >= 16 y vector[i] <= 20 Entonces
			cont4=cont4+1
		Fin Si
	Fin Para
	escribir " "
	escribir "Alumnos deficientes: " cont1
	escribir "Alumnos regulares: " cont2
	escribir "Alumnos buenos: " cont3
	escribir "Alumnos excelentes: " cont4
FinAlgoritmo
