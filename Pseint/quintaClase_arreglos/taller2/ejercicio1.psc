Algoritmo ejercicio1
	Definir i, j Como Entero
	Dimension v[10]
	
	Para i <- 0 hasta 9 Hacer
		v(i) <- i
	FinPara
	
	i <- 1
	j <- 2
	
	v(i) <- j
	v(j + i) <- j + i
	i <- v(i) + v(j)
	v(3) <- 5
	j <- v(i) - v(j)
	
	Escribir "El valor de i es: ", i , ", y el valor de j es: ", j
FinAlgoritmo
