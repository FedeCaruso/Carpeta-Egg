Algoritmo sin_titulo
	definir dia Como Caracter
	definir mes Como Caracter
	definir anio Como Caracter
	
	Escribir "Ingrese la fecha (dia)"
	leer dia
	
	escribir "Ingrese el mes (nn)"
	leer mes
	
	Escribir "ingrese el anio"
	leer anio
	
	Segun mes Hacer
		"01" o "1":
			Escribir "Es el ",dia," de enero de ",anio,"" 
		"02" o "2":
			escribir "Es el ",dia," de febrero de ",anio,""
		"03" o "3":
			escribir "Es el ",dia," de marzo de ",anio,""
		"04" o "4":
			escribir "Es el ",dia," de abril de ",anio,""
		"05" o "5":
			escribir "Es el ",dia," de mayo de ",anio,""
		"06" o "6":
			escribir "Es el ",dia," de junio de ",anio,""
		"07" o "7":
			escribir "Es el ",dia," de julio de ",anio,""
		"08" o "8":
			escribir "Es el ",dia," de agosto de ",anio,""
		"09" o "9": 
			escribir "Es el ",dia," de septiembre de ",anio,""
		"10":
			escribir "Es el ",dia," de octubre de ",anio,""
		"11":
			escribir "Es el ",dia," de noviembre de ",anio,""
		"12":
			escribir "Es el ",dia," de diciembre de ",anio,""
		De Otro Modo:
			Escribir "la fecha ingresada no es valida"
	Fin Segun
	
FinAlgoritmo

	