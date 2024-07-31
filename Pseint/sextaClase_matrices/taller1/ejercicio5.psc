Algoritmo ejercicio5
	Definir semanas, dias Como Entero
	
	semana <- 5
	dias <- 7
	Dimension mes(semana, dias), promedioTemperaturas(semana), nivelesTemperaturaSemana(semana, 4), temperaturaAlta(2)
	
	rellenaArray(mes, semana, dias)
	temperaturasMes(mes, nivelesTemperaturaSemana, semana, dias)
	promedioTemperaturaSemana(mes, promedioTemperaturas, semana, dias)
	
	Para i <- 0 Hasta semana - 1 Hacer
		Si nivelesTemperaturaSemana(i,0) > temperaturaAlta(0) Entonces
			temperaturaAlta(0) <- nivelesTemperaturaSemana(i,0)
			temperaturaAlta(1) <- nivelesTemperaturaSemana(i,2)
		FinSi
	FinPara
	
	imprimirArray(mes, semana, dias)
	
	Para i <- 0 Hasta semana - 1 Hacer
		Escribir "El dia de mas alta temperatura de la semana ", i + 1, " fue: ", diaSemana(nivelesTemperaturaSemana(i,2))
		Escribir "La temperatura de ese dia fue: ", nivelesTemperaturaSemana(i,0)
		Escribir "El dia de mas baja temperatura de la semana ", i + 1, " fue: ", diaSemana(nivelesTemperaturaSemana(i,3))
		Escribir "La temperatura de ese dia fue: ", nivelesTemperaturaSemana(i,1)
	FinPara
	
	Escribir "El dia de mas alta temperatura del mes fue: ", diaSemana(temperaturaAlta(1))
	Escribir "La temperatura de ese dia fue: ", temperaturaAlta(0)
FinAlgoritmo

SubAlgoritmo rellenaArray(matriz, fila, columna)
	// matriz: mes, fila: semana, columan: dias
	Para i <- 0 hasta fila - 1 Hacer
		Para j <- 0 Hasta columna - 1 Hacer
			Si i = fila - 1 Entonces
				Si j <= 2 Entonces
					matriz[i,j] <- Azar(31) + 7 // rellena temperatura de la ultima semana del mes (semana 5)
				SiNo
					matriz[i,j] <- 0
				FinSi
			SiNo
				matriz[i,j] <- Azar(31) + 7 // rellena temperatura de todas las primeras 4 semanas del mes
			FinSi
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo temperaturasMes(matriz1, matriz2, fila, columna)
	// matriz1: mes, matriz2: nivelesTemperaturaSemana, fila: semana, columan: dias
	Para i <- 0 hasta fila - 1 Hacer
		matriz2(i,1) <- 99
		Para j <- 0 Hasta columna - 1 Hacer
			Si i = fila - 1 Entonces
				Si j <= 2 Entonces
					Si matriz2(i,0) < matriz1(i,j) Entonces //Obtine la temperatura mas alta de la semana con su respectivo dia
						matriz2(i,0) <- matriz1(i,j)
						matriz2(i,2) <- j
					FinSi
					Si matriz2(i,1) > matriz1(i,j) Entonces //Obtine la temperatura mas baja de la semana con su respectivo dia
						matriz2(i,1) <- matriz1(i,j)
						matriz2(i,3) <- j
					FinSi
				FinSi
			SiNo
				Si matriz2(i,0) < matriz1(i,j) Entonces //Obtine la temperatura mas alta de la semana con su respectivo dia
					matriz2(i,0) <- matriz1(i,j)
					matriz2(i,2) <- j
				FinSi
				Si matriz2(i,1) > matriz1(i,j) Entonces //Obtine la temperatura mas baja de la semana con su respectivo dia
					matriz2(i,1) <- matriz1(i,j)
					matriz2(i,3) <- j
				FinSi
			FinSi
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo promedioTemperaturaSemana(matriz1, matriz2, fila, columna)
	// matriz1: mes, matriz2: promedioTemperatura fila: semana, columan: dias
	Para i <- 0 hasta fila - 1 Hacer
		Para j <- 0 Hasta columna - 1 Hacer
			matriz2(i) <- matriz2(i) + matriz1(i,j) // suma de todas las temperaturas de la semana
		FinPara
		matriz2(i) <- matriz2(i) / columna // promedio de temperatura de la semana
	FinPara
FinSubAlgoritmo

SubAlgoritmo dia <- diaSemana(num)
	//num: dia
	Segun num Hacer // se usa para saber en que dia de la semana se encuentra
		0:
			dia <- "Lunes"
		1:
			dia <- "Martes"
		2:
			dia <- "Miercoles"
		3:
			dia <- "Jueves"
		4:
			dia <- "Viernes"
		5:
			dia <- "Sabado"
		6:
			dia <- "Domingo"
	FinSegun
FinSubAlgoritmo

SubProceso imprimirArray(matriz, x, e)
	para j <- 0 Hasta e - 1 Hacer
		Segun diaSemana(j) Hacer // se usa para saber en que dia de la semana se encuentra
			"Lunes":
				dia <- "L"
			"Martes":
				dia <- "M"
			"Miercoles":
				dia <- "W"
			"Jueves":
				dia <- "J"
			"Viernes":
				dia <- "V"
			"Sabado":
				dia <- "S"
			"Domingo":
				dia <- "D"
		FinSegun
		Escribir Sin Saltar dia, "  "
	FinPara
	Escribir ""
	Para i <- 0 hasta x - 1 Hacer
		para j <- 0 Hasta e - 1 Hacer
			Escribir Sin Saltar matriz[i,j], " "
			Si matriz[i,j] / 10 < 1 Entonces
				Escribir Sin Saltar " "
			FinSi
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso