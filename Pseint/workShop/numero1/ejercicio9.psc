Algoritmo ejercicio9
	Definir num, resultado, i Como Entero
	
	resultado <- 1
	
	Escribir "Digite el numero que quiere saber el factorial"
	Leer num
	
	Para i = num Hasta 1 Con Paso -1 Hacer
		resultado <- resultado * i
	FinPara
	
	Escribir "El factorial del numero ", num, " es: ", resultado
FinAlgoritmo
