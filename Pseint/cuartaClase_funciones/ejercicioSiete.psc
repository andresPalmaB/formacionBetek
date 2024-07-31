Algoritmo ejercicioSiete
	Definir num Como Real
	Definir numPrimo Como Logico
	
	Escribir "Programa para calcular si un numero es primo o no"
	num <- validacionEnteroPositivo(num)
	numPrimo <- definirNumPrimo(num)
	
	Si numPrimo Entonces
		Escribir "El numero es Primo"
	SiNo
		Escribir "El numero no es Primo"
	FinSi
FinAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num)
	Definir bandera Como Logico
	
	Repetir
		Escribir "Digite el numero que quiere saber si es primo mayor que 1:"
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

SubAlgoritmo numPrimo <- definirNumPrimo(num)
	Definir cont, i Como Entero
	cont <- 0
	
	Si num <= 1 Entonces
		Escribir "¡Instruccion no ejecutada correctamente!"
	SiNo
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
	FinSi
FinSubAlgoritmo
	