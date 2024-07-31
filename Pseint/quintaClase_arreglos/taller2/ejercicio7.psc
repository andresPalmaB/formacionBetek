Algoritmo ejercicio7
	Definir n, i, num, k Como Entero
	Definir respuesta Como Caracter
	
	n <- validacionEnteroPositivo(n)
	Dimension arreglo(n)
	crearArreglo(arreglo, n)
	
	Escribir "El arreglo generado es:"
	Escribir Sin Saltar "[ "
	Para i = 0 Hasta n - 1 Hacer
		Escribir Sin Saltar arreglo(i), " "
		Si i = n - 1  Entonces
			Escribir "]"
		FinSi
	FinPara
	
	Escribir Sin Saltar "Digite el numero que quiere insertar en el arreglo existente: "
	Leer num
	
	Escribir Sin Saltar "Digite la pocision en la que quiere insetar el numero entre 1 y ", n, ": "
	Leer k
	k <- k - 1
	
	insertarValor(arreglo, n, num, k)
FinAlgoritmo

SubAlgoritmo insertarValor(arreglo, n, numX, k)
	arreglo(k) <- numX
	
	Escribir "El nuevo arreglo generado es: "
	Escribir Sin Saltar "[ "
	Para i = 0 Hasta n - 1 Hacer
		Escribir Sin Saltar arreglo(i), " "
		Si i = n - 1  Entonces
			Escribir "]"
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