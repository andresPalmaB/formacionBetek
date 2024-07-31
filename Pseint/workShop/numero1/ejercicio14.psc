Algoritmo ejercicio14
	Definir n, i, j, k, l Como Entero
	
	n <- 10
	l <- 9
	Para i = 1 Hasta n Hacer
		Para k = 1 Hasta l Con Paso 1 Hacer
			Escribir Sin Saltar "  "
		FinPara
		
		Para j = 1 Hasta n - l Hacer
			Escribir Sin Saltar "* "
		FinPara
		Escribir ""
		l <- l - 1
	FinPara
	
FinAlgoritmo
