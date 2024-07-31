Algoritmo leerNumeroEnteros
	Definir i, num Como Entero
	Definir cond1, cond2, cond3, cond4 Como Logico
	
	Repetir
		Escribir "Digite un numero real para ver si cumple con las condiciones"
		Leer num
		
		cond1 <- num mod 2 = 0
		cond2 <- no (num mod 5 = 0)
		cond3 <- num > 100
		cond4 <- num < 10000
	Hasta Que cond1 y cond2 y cond3 y cond4
	
FinAlgoritmo
