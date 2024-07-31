Algoritmo mayorque
	Definir num1, num2 Como Real
	
	Escribir "Desea calcular el numero mayor entre dos numeros"
	Escribir Sin Saltar "Digite el primer numero: "
	Leer num1
	
	Escribir Sin Saltar "Digite el segundo numero: "
	Leer num2
	
	Si num1 > num2 Entonces
		Escribir "El numero ", num1, " es el numero mayor"
	SiNo
		Si num1 < num2 Entonces
			Escribir "El numero ", num2, " es el numero mayor"
		SiNo
			Escribir "Los numeros escritos son iguales."
		FinSi
	FinSi
	
FinAlgoritmo
