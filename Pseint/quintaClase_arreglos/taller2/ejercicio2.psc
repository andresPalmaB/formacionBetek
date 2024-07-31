Algoritmo ejercicio2
	// Diseñe un algoritmo quqe calcule cuantas veces se encuentra un entero k en un arreglo de tipo entero
	Definir n, num, i, contador Como Entero
	
	n <- 20
	Dimension arreglo(n)
	insertarNumeros(arreglo, n)
	
	Escribir Sin Saltar "Digite un numero entre 0 y 9, para saber cuantas veces se encuentra en el arreglo: "
	Leer num
	
	contarNumero(arreglo, num, n)
	
FinAlgoritmo

SubAlgoritmo insertarNumeros(arreglo, n)
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		arreglo(i) <- azar(10)
	FinPara
FinSubAlgoritmo

SubAlgoritmo contarNumero(arreglo, num, n)
	Para i <- 0 Hasta n - 1 Hacer
		Si num = arreglo(i) Entonces
			contador <- contador + 1
		FinSi
		Escribir Sin Saltar arreglo(i) " "
	FinPara
	Escribir ""
	Escribir "La cantidad de veces que se encuentra el numero ", num, " en el arreglo es: ", contador
FinSubAlgoritmo
