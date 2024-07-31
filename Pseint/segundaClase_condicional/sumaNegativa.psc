Algoritmo sumaNegativa
	Definir num1, num2, suma Como Real
	
	Escribir Sin Saltar "Digite el primer numero: "
	Leer num1
	
	Escribir Sin Saltar "Digite el segundo numero: "
	Leer num2
	
	suma <- num1 - num2
	Si suma < 0 Entonces
		Escribir "Los numero digitados son: ", num1, " ", num2
		Escribir "La suma entre estos dos numero es: ", suma
	SiNo
		Escribir "No se obtuvo ningun resultado"
	FinSi
FinAlgoritmo
