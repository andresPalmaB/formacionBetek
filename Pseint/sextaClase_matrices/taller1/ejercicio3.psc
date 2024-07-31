Algoritmo ejercicio3
	definir i, j Como Entero
	Escribir Sin Saltar"Ingrese en numero de filas: "
	leer i
	Escribir Sin Saltar "Ingrese el numero de columnas: "
	Leer j
	Dimensionar matriz(i,j), arreglo(i*j)
	rellenaArray(matriz, i,j)
	convertirMatriz(matriz, arreglo, i,j)
	Escribir "matriz"
	imprimirArray(matriz, i,j)
	Escribir "arreglo"
	imprimirArray2(arreglo, i*j)
FinAlgoritmo

SubAlgoritmo rellenaArray(matriz,x,e)
	Para i<- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			matriz[i,j]<- Azar(10)
		FinPara
	FinPara
FinSubAlgoritmo

SubProceso imprimirArray(matriz, x,e)
	Para i<- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso imprimirArray2(arreglo, x)
	Para i<- 0 hasta x - 1 Hacer
		Escribir Sin Saltar arreglo(i)," "
	FinPara
	Escribir ""
FinSubProceso

SubProceso convertirMatriz(matriz, arreglo, x,e)
	Para i<- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			arreglo[i*e+j] <- matriz[i,j]
		FinPara
	FinPara
FinSubProceso