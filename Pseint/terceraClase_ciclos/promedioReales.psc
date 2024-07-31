Algoritmo promedioReales
	Definir i, n, num, resultado Como Real
	
	resultado <- 0
	Escribir "Cuantos numero quiere sacarle el promedio."
	Leer n
	
	Para i = 1 Hasta n Hacer
		Escribir "Digite el numero ", i
		Leer num
		
		resultado <- resultado + num
	FinPara
	
	Escribir "El promedio de los ", n, " numeros es: ", resultado / n
	
FinAlgoritmo
