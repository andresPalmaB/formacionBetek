Algoritmo ejercicioSeis
	Definir n, num Como Entero
	Definir respuesta Como Caracter
	
	n <- 20
	Dimension arreglo(n)
	insertarNumeros(arreglo, n)
	
	Escribir "El arreglo con numeros menores o iguales que 10 es:"
	Escribir Sin Saltar "[ "
	Para i = 0 Hasta n - 1 Hacer
		Si arreglo(i) <= 10 Entonces
			Escribir Sin Saltar arreglo(i), " "
		FinSi
		Si i = n - 1  Entonces
			Escribir "]"
		FinSi
	FinPara
FinAlgoritmo


SubAlgoritmo insertarNumeros(arreglo, n)
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		arreglo(i) <- azar(20)
	FinPara
FinSubAlgoritmo