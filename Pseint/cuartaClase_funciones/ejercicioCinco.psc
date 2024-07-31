Algoritmo ejercicioCinco
	Definir a, b Como Real
	Definir modulo Como Entero
	
	Escribir "Programa para calcular la parte entera entre dos numero enteros positivos"
	
	a <- validacionEnteroPositivo(a)
	b <- validacionEnteroPositivo(b)
	
	parteEntera <- calcularParteEntera(a,b)
	
	Escribir parteEntera
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

SubAlgoritmo parteEntera <- calcularParteEntera(dividendo, divisor)
	parteEntera <- (dividendo - (dividendo mod divisor)) / divisor
FinSubAlgoritmo