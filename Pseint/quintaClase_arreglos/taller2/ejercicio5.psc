Algoritmo ejercicioTres
	Definir n Como Entero
	
	n <- validacionEnteroPositivo(n)
	Dimension arreglo(n), contador(3)
	insertarNumeros(arreglo, n)
	contadorNumeros(arreglo, n)
FinAlgoritmo

SubAlgoritmo contadorNumeros(arreglo, n)
	Definir i Como Entero
	
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