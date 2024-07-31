Algoritmo ejercicioTres
	Definir n Como Entero
	n <- 10
	Dimension arreglo(n), contador(3)
	insertarNumeros(arreglo, n)
	
	Para i = 0 Hasta n - 1 Hacer
		Si arreglo(i) > 0 Entonces
			contador(0) = contador(0) + 1
		SiNo
			Si arreglo(i) < 0 Entonces
				contador(1) = contador(1) + 1
			SiNo
				contador(2) = contador(2) + 1
			FinSi
		FinSi
	FinPara
	
	Escribir "Existen ", contador(0), " numeros mayores que 0."
	Escribir "Existen ", contador(1), " numeros menores que 0."
	Escribir "Existen ", contador(2), " numero iguales a 0."
FinAlgoritmo

SubAlgoritmo insertarNumeros(arreglo, n)
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		Escribir Sin Saltar "Digite el numero ", i + 1, ":"
		Leer arreglo(i)
	FinPara
FinSubAlgoritmo