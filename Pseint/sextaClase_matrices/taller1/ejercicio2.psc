Algoritmo ejercicio 2
	definir i, j Como Entero
	Escribir " ingrese en numero de filas: "
	leer i
	j <- 3
	Dimensionar matriz(i,j)
	rellenaArray(matriz, i,j)
	imprimirArray(matriz, i,j)
FinAlgoritmo
SubAlgoritmo rellenaArray(matriz, x,e)
	
	Definir contador Como Entero
	Para i <- 0 hasta x - 1 Hacer
		
		para j <- 0 Hasta e - 1 Hacer
			si j=e Entonces
				matriz[i,j] <- contador
				contador <- 0
			SiNo
				matriz[i,j]<- Azar(10)
				contador<- contador+matriz[i,j]
			FinSi
		FinPara
		
	FinPara
FinSubAlgoritmo
SubProceso imprimirArray(matriz, x,e)
	Para i <- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			si j = 0 Entonces
				Escribir Sin Saltar matriz[i,j], " + "
			SiNo
				si j = 1 Entonces
					Escribir Sin Saltar matriz[i,j], " = "
				SiNo
					Escribir Sin Saltar matriz[i,j], " "
				FinSi
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso