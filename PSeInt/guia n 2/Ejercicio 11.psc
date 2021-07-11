Algoritmo sin_titulo
	definir nota1 Como Entero
	definir nota2 Como Entero
	definir nota3 Como Entero
	
	escribir "Ingresa la primer nota"
	leer nota1
	
	Escribir "Ingresa la segunda nota"
	leer nota2
	
	escribir "Ingresa la tercer nota"
	leer nota3
	
	si (nota1 >=1 y nota1<=10) y (nota2 >= 1 y nota2<=10) y (nota3 >=1 y nota3 <=10) Entonces
		Escribir "las tres notas estan entre 1 y 10"
	SiNo
		Escribir "Una o mas notas no estan entre 1 y 10"
	FinSi
FinAlgoritmo
