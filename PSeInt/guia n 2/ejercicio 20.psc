Algoritmo operario
	// torndef = tornillo defectuoso / tornsan= tornillo sano
	
	definir torndef Como Entero
	definir tornsan Como Entero
	
	escribir "Cuantos tornillos defectuosos ha producido el operario?"
	leer torndef
	
	escribir "Cuantos tornillos sin defectos ha producido el operario?"
	leer tornsan
	
	Si torndef > 200 y tornsan < 10000 Entonces
		escribir "Operario grado 5"
	SiNo
		Si torndef < 200 y tornsan < 10000 Entonces
			Escribir "Operario grado 6"
		SiNo
			Si torndef > 200 y tornsan > 10000 Entonces
				Escribir "Operario grado 7"
			SiNo
				Si torndef < 200 y tornsan > 10000 Entonces
					Escribir "Operario grado 8"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo
