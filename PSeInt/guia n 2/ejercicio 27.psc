Algoritmo sin_titulo
	definir nota1 Como Real
	definir nota2 Como Real
	definir nota3 Como Real
	definir nombre Como Caracter
	definir total Como Real
	definir i Como Entero
	
	i=2
	
	Mientras i=2 Hacer
		
		escribir "Ingresa el nombre del alumno"
		
		leer nombre
	 
		
		escribir "Ingresa la nota de ", nombre," en cuanto a la parte practica"
		leer nota1
		
		Si nota1 > 0 y nota1 <= 10 Entonces
			
			escribir "Ingresa la nota de ",nombre," en cuanto a la parte de problemas"
			leer nota2
			
			Si nota2 > 0 y nota2 <= 10 Entonces
				escribir "Ingresa la nota de ",nombre," en cuanto a la parte teorica"
				leer nota3
				
				Si nota3 > 0 y nota3 <= 10 Entonces
					Escribir "OK"
				SiNo
					escribir "ERROR: Esa no es una calificacion valida"
				Fin Si
				
			SiNo
				escribir "ERROR: Esa no es una calificacion valida"
			Fin Si
			
		SiNo
			escribir "ERROR: Esa no es una calificacion valida"
		Fin Si
		
		
		Mientras nota1 > 0 y nota1 <= 10 Hacer
		nota1= nota1*0.10
		
		Mientras nota2 > 0 y nota2 <= 10 Hacer
			nota2= nota2*0.50
			
			Mientras nota3 > 0 y nota3 <= 10 Hacer
				nota3= nota3*0.40
				
				total = nota1+nota2+nota3
				
				Escribir "El promedio de ",nombre," es de ",total,""
				
				nota3=20
				nota2=20
				nota1=20
			Fin Mientras
		Fin Mientras
	  Fin Mientras
  FinMientras
  
FinAlgoritmo
