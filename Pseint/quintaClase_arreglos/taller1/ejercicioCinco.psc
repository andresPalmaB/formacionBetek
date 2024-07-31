Algoritmo ejercicioCinco
	Definir n, num Como Entero
	n <- 10
	Dimension arreglo(n), contador(3)
	insertarNumeros(arreglo, n)
	
	Escribir Sin Saltar "Digite el numero a comparar: "
	Leer num
	
	Escribir "Los numero mayores que ", num, " son:"
	Para i = 0 Hasta n - 1 Hacer
		Si arreglo(i) > num Entonces
			Escribir Sin Saltar arreglo(i), " "
		FinSi
	FinPara
	Escribir ""
FinAlgoritmo

SubAlgoritmo insertarNumeros(arreglo, n)
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		Escribir Sin Saltar "Digite el numero ", i + 1, ":"
		Leer arreglo(i)
		arreglo(i) <- validacionEnteroPositivo(arreglo(i))
	FinPara
FinSubAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num)
	Definir bandera Como Logico
	
	Repetir
		Si num < 0 Entonces
			Escribir Sin Saltar "El numero es menor que 0. Digite el numero nuevamente: "
			Leer num
		SiNo
			bandera <- (num * 10) mod 10 = 0
			Si no bandera Entonces
				Escribir Sin Saltar"El numero no es entero. Digite el numero nuevamente: "
				Leer num
			FinSi
		FinSi
	Hasta Que num > 0 Y bandera
FinSubAlgoritmo