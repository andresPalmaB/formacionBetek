Algoritmo ejercicioOcho
	Definir num, sumatoria Como Real
	
	Escribir "Programa para calcular si un numero es primo o no"
	num <- validacionEnteroPositivo(num)
	sumatoria <- calculoSumatoriaFuncion(num)
	
	Escribir "El resultado de la sumatoria es: ", sumatoria
FinAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num)
	Definir bandera Como Logico
	
	Repetir
		Escribir "Digite el numero que quiere saber si es primo mayor que 1:"
		Leer num
		
		Si num < 0 Entonces
			Escribir "El numero es menor que 0"
		SiNo
			bandera <- (num * 10) mod 10 = 0
			Si no bandera Entonces
				Escribir "El numero no es entero"
			FinSi
		FinSi
	Hasta Que num > 0 y bandera
FinSubAlgoritmo

SubAlgoritmo sumatoria <- calculoSumatoriaFuncion(num)
	sumatoria <- 0
	Para n = 1 Hasta num Hacer
		sumatoria <- sumatoria + (n / (2 ^ n))
	FinPara
FinSubAlgoritmo	