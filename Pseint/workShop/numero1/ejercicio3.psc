Algoritmo ejercicio3
	//Diseñe un algoritmo que lea el sueldo de cinco empleados y muestre el sueldo promedio
	Definir resultado, num, contador Como Real
	resultado <- 0
	
	Para contador <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir  "Digite sueldo ", contador, ":"
		Leer num
		resultado <- resultado + num
	Fin Para
	
	Escribir "El promedio de sueldo es: ", resultado / 5
FinAlgoritmo
