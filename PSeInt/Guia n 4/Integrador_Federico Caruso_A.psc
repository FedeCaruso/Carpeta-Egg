Funcion Matri <- MuestraMatriz ( muestra Por Referencia, n Por Referencia )
	//esta funcion imprime la muestra en forma de matriz, y busca gen Z
	definir cont, i, j, auxA, auxB, auxC, auxD Como Entero
	definir matriz Como Caracter
	definir muex Como Logico
	Dimension matriz[n,n]
	cont =0
	auxA=0
	auxB=0
	auxC=0
	auxD=0
	
	//Asigno e imripimo la matriz:
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta n-1 Con Paso 1 Hacer
			matriz[i,j]= subcadena(muestra, cont, cont)
			cont=cont+1
		Fin Para
	Fin Para
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta n-1 Con Paso 1 Hacer
			escribir Sin Saltar matriz[i,j] " "
		Fin Para
		escribir " "
	Fin Para
	
	//empiezo con el gen z a continuacion:
	//recorro la matriz para buscar la diagonal principal
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta n-1 Con Paso 1 Hacer
			
			
			Si i=j Entonces
				Si matriz[i,j]="A" 
					auxA=auxA+1
				Fin Si
					Si matriz[i,j]="B" 
						auxB=auxB+1
					Fin Si
					Si matriz[i,j]="C" 
						auxC=auxC+1
					Fin Si
					Si matriz[i,j]="D" 
						auxD=auxD+1
					Fin Si
				FinSi
			
		FinPara
	FinPara
	
	//recorro de nuevo la matriz para la diagonal secundaria
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta n-1 Con Paso 1 Hacer
			
			
			Si i+j=n-1 Entonces
				Si matriz[i,j]="A"
					auxA=auxA+1
				Fin Si 
				Si matriz[i,j]="B"
					auxB=auxB+1
				Fin Si 
				Si matriz[i,j]="C"
					auxC=auxC+1
				Fin Si 
				Si matriz[i,j]="D"
					auxD=auxD+1
				Fin Si 
			Fin Si
			
		FinPara
	FinPara
	
	
	
	Si auxA=n*2 o auxB=n*2 o auxC=n*2 o auxD= n*2 Entonces
		escribir "Has encontrado el Gen Z."
	SiNo
		Escribir "El formato es correcto pero no encontraste el Gen Z"
		muex <- validarMuestra ( muestra )
	Fin Si
	
Fin Funcion

Funcion muex <- validarMuestra ( muestra )
	//Esta funcion evalua que se cumplan los requisitos de la muestra
	definir muex, matri Como Logico
	definir taman, n, i Como Entero
	definir cad Como Caracter
	
	escribir "Dame la muestra, en base a A, B, C o D. Debe tener 9, 16, o 1369 datos"
	leer muestra 
	
	taman= Longitud(muestra)
	
	Para i=0 Hasta taman-1 Con Paso 1 Hacer
		cad=SubCadena(muestra,i,i)
		Si cad = "A" o cad="B" o cad="C" o cad="D" Entonces
			Segun taman Hacer
				9:
					n=3
				16:
					n=4
				1369:
					n=37
				De Otro Modo:
					muex <- validarMuestra ( muestra )
			Fin Segun
		SiNo
			muex <- validarMuestra ( muestra )
		Fin Si
	Fin Para
	
	Matri <- MuestraMatriz ( muestra, n)
	
Fin Funcion

Algoritmo sin_titulo
	//Federico Caruso
	
	definir muestra Como Caracter
	definir n Como Entero
	definir muex Como Logico
	muestra= ""
	muex <- validarMuestra ( muestra )
	
FinAlgoritmo
