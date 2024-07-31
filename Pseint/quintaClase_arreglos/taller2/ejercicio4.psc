Algoritmo ejercicio4
	Definir n, i Como Entero
	Definir respuesta Como Caracter
	
	n <- validacionEnteroPositivo(n)
	Dimension arreglo(n)
	insertarNumeros(arreglo, n)
	calcularPromedio(arreglo, n)
	
FinAlgoritmo

SubAlgoritmo calcularPromedio(arreglo, n)
	Definir i Como Entero
	Definir suma Como Real
	
	Para i <- 0 Hasta n - 1 Hacer
		suma <- suma + arreglo(i)
	FinPara
	
	Escribir "Su promedio es: ", suma/n
FinSubAlgoritmo

SubAlgoritmo insertarNumeros(arreglo, n)
	Definir i Como Entero
	
	Para i <- 0 Hasta n - 1 Hacer
		Escribir Sin Saltar "Digite el numero ", i + 1, ":"
		Leer arreglo(i)
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