Algoritmo ejercicioCuatro
	Definir n, i Como Entero
	Definir respuesta Como Caracter
	
	n <- validacionEnteroPositivo(n)
	Dimension arreglo(n)
	insertarNumeros(arreglo, n)
	
	respuesta = "[ " + arreglo(0)
	Si n = 1 Entonces
		respuesta = respuesta + " ]"
	SiNo
		Para i = 1 Hasta n - 1 Hacer
			respuesta = respuesta + ", " + arreglo(i)
			Si i = n - 1  Entonces
				respuesta = respuesta + " ]"
			FinSi
		FinPara
	FinSi
	Escribir ""
	Escribir "El arreglo sin numeros repetidos es:"
	Escribir respuesta
FinAlgoritmo

SubAlgoritmo insertarNumeros(arreglo, n)
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		Si n = 1 Entonces
			Escribir Sin Saltar "Digite el numero ", i + 1, ":"
			Leer arreglo(i)
		SiNo
			Escribir Sin Saltar "Digite el numero ", i + 1, ":"
			Leer arreglo(i)
			arreglo(i) <- validacionRepeticion(arreglo(i), i, arreglo)
		FinSi
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

SubAlgoritmo num <- validacionRepeticion(num, i, arreglo)
	Definir j Como Entero
	
	Para j = 0 Hasta i Hacer
		Si no (i = 0 o j = i) Entonces
			Repetir
				Si arreglo(j) = num Entonces
					Escribir Sin Saltar "El numero se repite en el arreglo, Digite el numero ", i + 1, " nuevamente:"
					Leer num
				FinSi
			Hasta Que no (arreglo(j) = num)
		FinSi
	FinPara
FinSubAlgoritmo
	