Funcion diagonal <- generaMatriz ( matriz, i, j, valorr )
	definir muest Como Logico
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 4 Con Paso 1 Hacer
			matriz[i,j]= aleatorio(20, 35)
			Si i=j Entonces
				valorr=0
				matriz[i,j]=valorr
			Fin Si
		Fin Para
	Fin Para
	
	muest <- dameLaMatriz ( matriz, i, j, valorr )
	
Fin Funcion

Funcion muest <- dameLaMatriz ( matriz Por Referencia, i Por Referencia, j Por Referencia, valorr Por Referencia )
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 4 Con Paso 1 Hacer
			escribir Sin Saltar matriz[i, j] " "
		Fin Para
		escribir " "
	Fin Para
Fin Funcion

Algoritmo sin_titulo
	definir matriz, i, j, valorr Como Entero
	definir diagonal Como Logico
	dimension matriz[5, 5]
	i=0
	j=0
	valorr=0
	
	diagonal <- generaMatriz ( matriz, i, j, valorr )
	
	
FinAlgoritmo
