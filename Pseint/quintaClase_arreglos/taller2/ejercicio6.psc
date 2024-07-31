Algoritmo ejercicio6
	Definir n, k Como Entero
	
	n <- 50
	Dimension T(n), resultado(n)
	insertarNumeros(T, n)
	k <- validacionEnteroPositivo(k)
	nuevoArreglo(T, n, k, resultado)
	
	Escribir "El arreglo generado era:"
	Escribir Sin Saltar "[ "
	Para i = 0 Hasta n - 1 Hacer
		Escribir Sin Saltar T(i), " "
		Si i = n - 1  Entonces
			Escribir "]"
		FinSi
	FinPara
	
	Escribir "El nuevo arreglo generado es:"
	Escribir Sin Saltar "[ "
	Para i = 0 Hasta n - 1 Hacer
		Escribir Sin Saltar resultado(i), " "
		Si i = n - 1  Entonces
			Escribir "]"
		FinSi
	FinPara
FinAlgoritmo

SubAlgoritmo nuevoArreglo(arreglo, n, k, newArreglo)
	Para i <- 0 Hasta n - 1 Hacer
		newArreglo(i) <- arreglo(i) / arreglo(k)
	FinPara
FinSubAlgoritmo

SubAlgoritmo insertarNumeros(arreglo, n)
	Definir i, numeroEntero Como Entero
	Definir num Como Real
	
	Para i <- 0 Hasta n - 1 Hacer
		numeroEntero <- azar(10000) - 1
		num <- numeroEntero / 10000
		arreglo(i) <- num * 100
	FinPara
FinSubAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num)
	Definir bandera Como Logico
	
	Repetir
		Escribir "Digite un numero entre 1 y 50: "
		Leer num
		
		Si num - 1 < 0 Entonces
			Escribir "El numero es menor que 0"
		SiNo
			bandera <- (num * 10) mod 10 = 0
			Si no bandera Entonces
				Escribir "El numero no es entero"
			FinSi
		FinSi
	Hasta Que num >= 0 y bandera
FinSubAlgoritmo