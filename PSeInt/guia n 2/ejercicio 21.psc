Algoritmo sueldo
	
	Definir tiposueld Como Caracter
	Definir montototal Como Real
	definir sueldocomi Como Real
	definir valorhora Como Real
	Definir horastrab Como Entero
	definir horaxval Como Real
	definir sueldotot Como Real
	definir hsextra Como entero
	definir porcenextra Como Real
	
	escribir "Ingrese el tipo de contratacion segun corresponda (1, 2 o 3)"
	Escribir "1: comision"
	Escribir "2: salario fijo + comision"
	Escribir "3: salario fijo"
	leer tiposueld
	
	Si tiposueld= "1" Entonces
		
		escribir "Ingresa el monto total de ventas de esta semana"
		leer montototal
		
		sueldocomi= (40*montototal)/100
		
		escribir "El salario correspondiente es de ",sueldocomi,""
		
		
	SiNo
		Si tiposueld= "2" Entonces
			escribir "Ingresa el valor a abonar por hora"
			leer valorhora
			
			Escribir "Ingresa la cantidad de horas trabajadas esta semana (no estan contempladas las horas extra)"
			leer horastrab
			
			horaxval= valorhora*horastrab
			
			Escribir "Ingresa el monto total de ventas de esta semana"
			leer montototal
			
			sueldocomi= (25*montototal)/100
			
			sueldotot= horaxval+sueldocomi
			
			Escribir "El sueldo a abonar en este caso es de $",sueldotot,""
			
			
		SiNo
			Si tiposueld= "3" Entonces
				Escribir "Ingresa el valor a abonar por hora"
				leer valorhora
				
				Escribir "Ingresa la cantidad de horas trabajadas esta semana"
				leer horastrab
				
				escribir "Ingresa la cantidad de Hs. extra"
				leer hsextra
				
				
				horaxval=valorhora*horastrab
				porcenextra= (valorhora/2)+horaxval
				sueldotot= horaxval+porcenextra
				
				escribir "El sueldo a abonar en este caso es de $ ",sueldotot,""
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo
