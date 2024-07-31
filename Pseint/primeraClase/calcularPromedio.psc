Algoritmo calcularPromedio
	Definir resultado, num, contador Como Real
	resultado <- 0
	
	Para contador <- 1 Hasta 8 Con Paso 1 Hacer
		Escribir  "Digite numero ", contador, " :"
		Leer num
		resultado <- resultado + num
	Fin Para
	
	Escribir "El promedio de notas es: ", resultado / 8
FinAlgoritmo
