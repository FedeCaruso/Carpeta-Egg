Funcion veces <- LetraRepe ( fras, letra )
	definir cont Como Entero
	definir taman Como Entero
	definir i Como Entero
	
	i=0
	cont=0
	taman=Longitud(fras)
	
	Para i<-0 Hasta taman Con Paso 1 Hacer
		
		Si SubCadena(fras,i,i) = letra Entonces
			cont=cont+1
			
		Fin Si
		
	Fin Para
	escribir "La letra ",letra," se repite ",cont," veces"
Fin Funcion

Algoritmo sin_titulo
	
	definir veces Como Entero
	Definir fras Como Caracter
	definir letra Como Caracter
	
	Escribir "Ingresa un texto"
	leer fras 
	
	escribir "Ingresa la letra que quieras buscar"
	leer letra
	
	veces= LetraRepe (fras, letra)
FinAlgoritmo
