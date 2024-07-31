Algoritmo nuevoSueldo
	Definir sueldo, anios, aumento Como Real
	
	Escribir Sin Saltar "Digite el sueldo del empleado: "
	Leer sueldo
	Escribir Sin Saltar "Digite los anios de antiguedad del empleado: "
	Leer anios
	
	Si sueldo < 500 Entonces
		Si anios < 10 Entonces
			aumento <- sueldo * 1.05
			Escribir "Este empleado tuvo un aumento del 5%, su sueldo actual es de ", aumento
		SiNo
			aumento <- sueldo * 1.2
			Escribir "Este empleado tuvo un aumento del 20%, su sueldo actual es de ", aumento
		FinSi
	SiNo
		Escribir "Este empleado no tuvo ninguna variacion en su sueldo, su sueldo actual es de: ", aumento
	FinSi
FinAlgoritmo
