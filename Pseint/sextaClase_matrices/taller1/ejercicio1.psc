Algoritmo ejercicio 1
	definir i, j Como Entero
	Escribir " ingrese en numero de filas: "
	leer i
	Escribir "ingrese el numero de columnas"
	Leer j
	Dimensionar matriz(i,j)
	rellenaArray(matriz, i,j)
	imprimirArray(matriz, i,j)
FinAlgoritmo

SubAlgoritmo rellenaArray(matriz, x,e)
	Para i<- 0 hasta x - 1Hacer
		para j <- 0 Hasta e - 1 Hacer
			matriz[i,j]<- Azar(10)
		FinPara
	FinPara
FinSubAlgoritmo

SubProceso imprimirArray(matriz, x,e)
	Para i <- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso