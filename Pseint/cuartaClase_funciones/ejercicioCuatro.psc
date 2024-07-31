Algoritmo ejercicioCuatro
	Definir a, b Como Real
	
	Escribir "Programa para calcular el modulo entre dos numero enteros positivos"
	
	a <- validacionEnteroPositivo(a)
	b <- validacionEnteroPositivo(b)
	
	modulo <- calcularModulo(a,b)
	
	Escribir modulo
	
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

SubAlgoritmo modulo <- calcularModulo(dividendo, divisor)
	modulo <- (dividendo - (trunc(dividendo/divisor) * divisor))
FinSubAlgoritmo
	