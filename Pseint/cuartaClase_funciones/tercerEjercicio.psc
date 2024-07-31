Algoritmo tercerEjercicio
	Definir num Como Real
	
	Escribir "Devolver el valor absoluto de cualquier numero"
	
	valorAbsoluto <- calcularValorAbsoluto(num)
	Escribir "El valor absoluto del numero es: ", valorAbsoluto
FinAlgoritmo

SubAlgoritmo valorAbsoluto <- calcularValorAbsoluto(num)
	Escribir "Digite el numero a transformar: "
	Leer num
	
	valorAbsoluto <- abs(num)
FinSubAlgoritmo