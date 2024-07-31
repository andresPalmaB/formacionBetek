Algoritmo quickSortEejercicio
	// dimension de arreglo, n lo puedes modificar a cualquier valor y el algoritmo sigue funcionando
	// el arreglo se obtiene a travez de numeros aleatorios
	n <- 10
	Dimension arreglo(n), arreglo1(n)
	
	rellenarArreglo(arreglo, n)
	Escribir "Arreglo Desordenado: "
	Para i <- 0 Hasta n - 1 Hacer
		escribir Sin Saltar arreglo(i) " "
		arreglo1(i) <- arreglo(i)
	FinPara
	Escribir ""
	Escribir ""
	quickSort(arreglo, n)
	Escribir ""
	Escribir "Arreglo Ordenado: "
	Para i <- 0 Hasta n - 1 Hacer
		Escribir Sin Saltar arreglo(i), " "
	FinPara
	Escribir ""
	Escribir ""
	Escribir "Arreglo Desordenado: "
	Para i <- 0 Hasta n - 1 Hacer
		escribir Sin Saltar arreglo1(i) " "
	FinPara
	Escribir ""
FinAlgoritmo

SubAlgoritmo rellenarArreglo(arreglo, n)
	Para i <- 0 Hasta n - 1 Hacer
		arreglo(i) <- Aleatorio(1, 100)
	FinPara
FinSubAlgoritmo

SubAlgoritmo quickSort(arreglo, n)
	Definir cont1, cont2 Como Entero
	
	pivote <- arreglo(0)
	Si no (n <= 1) Entonces
		//calculamos las dimensiones de los vectores para numero menores que el pivote
		//y numero mayores e iguales que el pivote
		Para i <- 1 Hasta n - 1 Hacer
			Si pivote > arreglo(i) Entonces
				cont1 <- cont1 + 1
			SiNo
				cont2 <- cont2 + 1
			FinSi
		FinPara
		
		//dimensionasmos los vectores para numero menores que el pivote
		//y numero mayores e iguales que el pivote
		Si no (cont1 = 0) Entonces
			Dimension arreglo1(cont1)
		FinSi
		
		Si no (cont2 = 0) Entonces
			Dimension arreglo2(cont2)
		FinSi
		
		//llenamos los vectores para numero menores que el pivote
		//y numero mayores e iguales que el pivote
		Para i <- 1 Hasta n - 1 Hacer
			Si pivote > arreglo(i) Entonces
				Si contador1 <= cont1 Entonces
					contador1 = contador1 + 1
					Para j <- contador1 - 1 Hasta cont1 - 1 Hacer
						arreglo1(j) <- arreglo(i)
					FinPara
				FinSi
			SiNo
				Si contador2 <= cont2 Entonces
					contador2 = contador2 + 1
					Para j <- contador2 - 1 Hasta cont2 - 1 Hacer
						arreglo2(j) <- arreglo(i)
					FinPara
				FinSi
			FinSi
		FinPara
		
		// imprimimos los arreglos para numero menores que el pivote
		//y numero mayores e iguales que el pivote
		Si no (cont1 = 0) Entonces
			Escribir "Arreglo numeros menores que pivote ", pivote, " Desordenada: "
			Para i <- 0 Hasta cont1 - 1 Hacer
				Escribir Sin Saltar arreglo1(i), " "
			FinPara
			Escribir ""
		FinSi
		
		// imprimimos los arreglos para numero mayores que el pivote
		//y numero mayores e iguales que el pivote
		Si no (cont2 = 0) Entonces
			Escribir "Arreglo numeros mayores que pivote ", pivote, " Desordenada: "
			Para i <- 0 Hasta cont2 - 1 Hacer
				Escribir Sin Saltar arreglo2(i), " "
			FinPara
			Escribir ""
		FinSi
		
		// se realiza la recursividad en arreglo para numero menores que el pivote
		Si no (cont1 = 0) Entonces
			quickSort(arreglo1, cont1)
		FinSi
		
		// imprimimos el arreglos para numero menores que el pivote despues de hacer la recursividad
		Si no (cont1 = 0) Entonces
			Escribir "Arreglo numeros menores que pivote ", pivote, " Ordenada, despues de recursividad: "
			Para i <- 0 Hasta cont1 - 1 Hacer
				Escribir Sin Saltar arreglo1(i), " "
			FinPara
			Escribir ""
			
		FinSi
		
		// se realiza la recursividad en arreglo para numero mayores que el pivote
		Si no (cont2 = 0) Entonces
			quickSort(arreglo2, cont2)
		FinSi
		
		// imprimimos el arreglos para numero menores que el pivote despues de hacer la recursividad
		Si no (cont2 = 0) Entonces
			Escribir "Arreglo numeros mayores que pivote ", pivote, " Ordenada, despues de recursividad: "
			Para i <- 0 Hasta cont2 - 1 Hacer
				Escribir Sin Saltar arreglo2(i), " "
			FinPara
			Escribir ""
		FinSi
		
		arreglo(cont1) <- pivote
		
		// llenamos el arreglo original con los arreglos de numero mayores y menores que el pivote
		// ya organizadas
		Si no (cont1 = 0) Entonces
			Para i <- 0 Hasta cont1 - 1 Hacer
				arreglo(i) <- arreglo1(i)
			FinPara
		FinSi
		
		Si no (cont2 = 0) Entonces
			Si no (cont2 = 1) Entonces
				Para i <- 0 Hasta cont2 - 1 Hacer
					arreglo(cont1 + 1 + i) <- arreglo2(i)
				FinPara	
			SiNo
				arreglo(cont1 + 1) <- arreglo2(0)
			FinSi
		FinSi
	SiNo
		arreglo(0) <- pivote
	FinSi
FinSubAlgoritmo
	