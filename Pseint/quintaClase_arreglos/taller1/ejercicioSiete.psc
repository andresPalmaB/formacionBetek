Algoritmo ejercicioSiete
	Definir n, num Como Entero
	Definir respuesta Como Caracter
	
	n <- 20
	Dimension arreglo(n)
	insertarNumeros(arreglo, n)
	
	Escribir "El arreglo con numeros primos es:"
	Escribir Sin Saltar "[ "
	Para i = 0 Hasta n - 1 Hacer
		Si definirNumPrimo(arreglo(i)) Entonces
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
		arreglo(i) <- azar(100)
	FinPara
FinSubAlgoritmo

SubAlgoritmo numPrimo <- definirNumPrimo(num)
	Definir cont, i Como Entero
	cont <- 0
	
	Segun num Hacer
		2:
			numPrimo <- Verdadero
		3:
			numPrimo <- Verdadero
		De Otro Modo:
			Para i = 2 Hasta num / 2 Hacer
				Si num mod i = 0 Entonces
					cont <- cont + 1
				FinSi
			FinPara
			
			Si cont = 0 Entonces
				numPrimo <- Verdadero
			SiNo
				numPrimo <- Falso
			FinSi
	FinSegun
FinSubAlgoritmo