Algoritmo ejercicio8
	Definir n, i, num, k Como Entero
	Definir respuesta Como Caracter
	
	n <- validacionEnteroPositivo(n)
	Dimension arreglo(n), resultadoSumaNumero(2)
	crearArreglo(arreglo, n)
	
	Escribir "El arreglo generado es:"
	Escribir Sin Saltar "[ "
	Para i = 0 Hasta n - 1 Hacer
		Escribir Sin Saltar arreglo(i), " "
		Si i = n - 1  Entonces
			Escribir "]"
		FinSi
	FinPara
	
	calcularSuma(arreglo, n, resultadoSumaNumero)
	
	Escribir "El resultado de la suma de los numero pares es: ", resultadoSumaNumero(0)
	Escribir "El resultado de la suma de los numero impares es: ", resultadoSumaNumero(1)
	
FinAlgoritmo

SubAlgoritmo calcularSuma(arreglo, n, arreglo2)
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		Si arreglo(i) mod 2 = 0 Entonces
			arreglo2(0) <- arreglo2(0) + arreglo(i)
		SiNo
			arreglo2(1) <- arreglo2(1) + arreglo(i)
		FinSi
	FinPara
FinSubAlgoritmo

SubAlgoritmo crearArreglo(arreglo, n)
	Definir i, numeroEntero Como Entero
	Definir num Como Real
	
	Para i <- 0 Hasta n - 1 Hacer
		arreglo(i) <- azar(100)
	FinPara
FinSubAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num)
	Definir bandera Como Logico
	
	Repetir
		Escribir Sin Saltar"Digite el numero de elementos que quieres ingresar: "
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