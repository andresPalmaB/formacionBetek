Algoritmo ejercicio4
	Definir i, j Como Entero
	
	i <- 10
	j <- 10
	Dimension matriz(i, j)
	rellenaArray(matriz, i, j)
	imprimirArray(matriz, i, j)
	
FinAlgoritmo

SubAlgoritmo rellenaArray(matriz, x, e)
	Para i<- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			Si i = 0 Entonces
				matriz[i,j] <- j
			SiNo
				Si j = 0 Entonces
					matriz[i,j] <- i
				SiNo
					matriz[i,j] <- i * j
				FinSi
			FinSi
		FinPara
	FinPara
FinSubAlgoritmo

SubProceso imprimirArray(matriz, x, e)
	Para i <- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			Si i <= 1 y j >= 1 Entonces
				Escribir Sin Saltar " "
			FinSi
			Si i = 2 y j >= 1 y j <= 4 Entonces
				Escribir Sin Saltar " "
			FinSi
			Si i = 3 y j >= 1 y j <= 3 Entonces
				Escribir Sin Saltar " "
			FinSi
			Si i = 4 y j >= 1 y j <= 2 Entonces
				Escribir Sin Saltar " "
			FinSi
			Si i > 4 y j = 1 Entonces
				Escribir Sin Saltar " "
			FinSi
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso