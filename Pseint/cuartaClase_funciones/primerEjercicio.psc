Algoritmo primerEjercicio
	Definir base, altura, area Como Real
	
	Escribir "Programa para calcular el areal de un triangulo"
	
	Escribir "El area del triangulo es: ", calcularArea(base, altura)
FinAlgoritmo

SubAlgoritmo area <- calcularArea(base, altura)
	Escribir Sin Saltar "Digite la base del triangulo: "
	Leer base
	
	Escribir Sin Saltar "Digite la altura del triangulo: "
	Leer altura
	
	area <- base * altura / 2
FinSubAlgoritmo
	