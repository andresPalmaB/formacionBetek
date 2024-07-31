Algoritmo ejercicioDos
	Definir n Como Entero
	n <- 10
	Dimension arreglo(n), contador(2)
	insertarNumeros(arreglo, n)
	
	Para i = 0 Hasta n - 1 Hacer
		Si arreglo(i) mod 2 = 0 Entonces
			contador(0) = contador(0) + 1
		SiNo
			contador(1) = contador(1) + 1
		FinSi
	FinPara
	
	Escribir "Existen ", contador(0), " numeros pares."
	Escribir "Existen ", contador(1), " numeros impares."
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