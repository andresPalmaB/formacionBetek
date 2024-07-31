Algoritmo ejercicio6
	Definir option, division, mes Como Entero
	Definir ventasAnuales Como Real
	
	division <- 5
	mes <- 12
	Dimension anioFabrica(division, mes), ventasMensuales(1, mes), departamentoMasVentas(1, 2)
	Dimension departamentoMayorVenta(2)
	Escribir "Balance anual de fabrica"
	Escribir "1. Generar montos de ventas mensuales"
	Escribir "2. Digitar montos de ventas mensuales"
	option <- validacionEnteroPositivo(option, 1)
	Escribir ""
	
	Repetir
		Segun option Hacer
			1:
				rellenaArray1(anioFabrica, division, mes)
				Escribir "Los resultado del año fueron los siguiente expresado en miles: "
				imprimirArray(anioFabrica, division, mes)
				Escribir ""
			2:
				rellenaArray2(anioFabrica, division, mes)
				Escribir "Los resultado del año fueron los siguiente expresado en miles: "
				imprimirArray(anioFabrica, division, mes)
				Escribir ""
			3:
				ventasMensualesFabrica(ventasMensuales, anioFabrica, division, mes)
				Escribir "Las ventas mensuales por mes fueron: "
				imprimirArray(ventasMensuales, 1, mes)
				Escribir ""
			4:
				ventasAnuales <- montoAnualFabrica(anioFabrica, division, mes)
				Escribir "Las ventas anuales de la empresa fueron: ", ventasAnuales
				Escribir ""
			5:
				divisionMasVentas(departamentoMasVentas, anioFabrica, division)
				Escribir "La Division con mas ventas en el mes de Julio fue: ", departamentoMasVentas(0,1) + 1
				Escribir "Con un total de: ", departamentoMasVentas(0,0), " ventas en miles."
				Escribir ""
			6:
				Escribir Sin Saltar "Digite a cual Departamento quiere saber su mejor venta del anio. "
				division <- validacionEnteroPositivo(division, 0)
				divisionMayorVenta(departamentoMayorVenta, anioFabrica, mes, division)
				Escribir "La Mayor venta para este departamento fue de: ", departamentoMayorVenta(0)
				Escribir "El record se obtuvo en el mes de: ", mesAnio(departamentoMayorVenta(1))
				Escribir ""
		FinSegun
		
		Escribir "Balance anual de fabrica"
		Escribir "1. Total ventas mensuales de la fabrica"
		Escribir "2. Total ventas anuales de la fabrica"
		Escribir "3. Departamento con mayores ventas en el mes de Julios(7)"
		Escribir "4. Mejor resultado del año por departamente seleccionado"
		Escribir "5. Salir"
		Escribir ""
		
		option <- validacionEnteroPositivo(option, 0)
		option <- option + 2
		
		Si option = 7 Entonces
			Escribir "¡Gracias por participar del balance anual!"
		FinSi
	Hasta Que option = 7
FinAlgoritmo

SubAlgoritmo rellenaArray1(matriz, fila, columna)
	// matriz: fabrica, fila: division, columan: meses
	Para i <- 0 hasta fila - 1 Hacer
		Para j <- 0 Hasta columna - 1 Hacer
			matriz[i,j] <- (Azar(999) / 10)
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo rellenaArray2(matriz, fila, columna)
	// matriz: fabrica, fila: division, columan: meses
	Para i <- 0 hasta fila - 1 Hacer
		Para j <- 0 Hasta columna - 1 Hacer
			Escribir Sin Saltar "Digite el monto de venta del mes ", j, " para la division ", i, ": "
			Leer matriz[i,j]
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo ventasMensualesFabrica(arreglo, matriz, fila, columna)
	// arreglo: ventasMensuales, matriz: fabrica, fila: division, columan: meses
	Para j <- 0 Hasta columna - 1 Hacer
		Para i <- 0 hasta fila - 1 Hacer
			arreglo(0,j) <- arreglo(0,j) + matriz[i,j]
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo total <- montoAnualFabrica(matriz, fila, columna)
	// matriz: fabrica, fila: division, columan: mesesFinSubAlgoritmo, total: ventas anueles de toda la fabrica
	Para i <- 0 hasta fila - 1 Hacer
		Para j <- 0 Hasta columna - 1 Hacer
			total <- total + matriz[i,j]
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo divisionMasVentas(arreglo, matriz, fila)
	// arreglo: division con mas ventas mes de julio, matriz: fabrica, fila: division
	Para i <- 0 hasta fila - 1 Hacer
		Si matriz[i,6] > arreglo(0,0) Entonces
			arreglo(0,0) <- matriz[i,6]
			arreglo(0,1) <- i
		FinSi
	FinPara
FinSubAlgoritmo

SubAlgoritmo divisionMayorVenta(arreglo, matriz, columna, division)
	// arreglo: mayor venta del año de una division determinada, matriz: fabrica, columan: meses
	Para j <- 0 hasta columna - 1 Hacer
		Si matriz[division - 1,j] > arreglo(0) Entonces
			arreglo(0) <- matriz[division - 1,j]
			arreglo(1) <- j
		FinSi
	FinPara
FinSubAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num , num2)
	Definir bandera Como Logico
	
	Repetir
		Si num2 = 1 Entonces
			Escribir Sin Saltar "Escoja la opcion que quiera realizar entre 1 y 2: "
			Leer num
			
			Si (num < 1 o num > 2) Entonces
				Escribir "El numero es menor que 1 o mayor que 2."
			SiNo
				bandera <- (num * 10) mod 10 = 0
				Si no bandera Entonces
					Escribir "El numero no es entero"
				FinSi
			FinSi
		SiNo
			Escribir Sin Saltar "Escoja la opcion que quiera realizar entre 1 y 5: "
			Leer num
			
			Si (num < 1 o num > 5) Entonces
				Escribir "El numero es menor que 1 o mayor que 5."
			SiNo
				bandera <- (num * 10) mod 10 = 0
				Si no bandera Entonces
					Escribir "El numero no es entero"
				FinSi
			FinSi
		FinSi
	Hasta Que (num >= 1 y num <= 6) y bandera
FinSubAlgoritmo

SubProceso imprimirArray(matriz, fila, columna)
	// matriz: fabrica, fila: division, columan: meses
	Para i<- 0 hasta fila - 1 Hacer
		para j <- 0 Hasta columna - 1 Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubAlgoritmo mes <- mesAnio(num)
	//num: mes
	Segun num Hacer // se usa para saber en que dia de la semana se encuentra
		0:
			mes <- "Enero"
		1:
			mes <- "Febrero"
		2:
			mes <- "Marzo"
		3:
			mes <- "Abril"
		4:
			mes <- "Mayo"
		5:
			mes <- "Junio"
		6:
			mes <- "Julio"
		7:
			mes <- "Agosto"
		8:
			mes <- "Septiembre"
		9:
			mes <- "Octubre"
		10:
			mes <- "Noviembre"
		11:
			mes <- "Diciembre"
	FinSegun
FinSubAlgoritmo