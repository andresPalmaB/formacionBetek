Algoritmo ejercicioSeis
	Definir n Como Real
	Definir numPar Como Logico
	
	Escribir "Programa para calcular si un numero es par o no"
	n <- validacionEnteroPositivo(n)
	
	numPar <- calcularModulo(n, 2)
	
	Si numPar Entonces
		Escribir "El numero es par"
	SiNo
		Escribir "El numero es impar"
	FinSi
FinAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num)
	Definir bandera Como Logico
	
	Repetir
		Escribir Sin Saltar"Digite el primer numero: "
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

SubAlgoritmo numPar <- calcularModulo(dividendo, divisor)
	numPar <- (dividendo - (trunc(dividendo/divisor) * divisor)) = 0
FinSubAlgoritmo