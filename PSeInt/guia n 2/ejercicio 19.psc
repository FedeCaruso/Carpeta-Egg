Algoritmo bisiesto
	
	Definir year Como Entero
	
	Escribir "Ingresar un anio para determinar si es bisiesto o no"
	leer year
	
	// si el segundo y/o tercer if no se cumplen, sigue la otra verificacion
	Si year > 0 Entonces
		Si year mod 4 = 0 Entonces
			Si year mod 100 <> 0 Entonces
				escribir "Es un anio bisiesto"
				
			SiNo
				
				Si year mod 100 = 0 y year mod 400 = 0 Entonces
					
					Escribir "Es un anio bisiesto"
					
				SiNo
					
					Escribir "no es un anio bisiesto"
				Fin Si
				
			
			Fin Si
		SiNo
			
			Escribir "no es un anio bisiesto"
		FinSi
		
	FinSi
	
	
	
FinAlgoritmo
