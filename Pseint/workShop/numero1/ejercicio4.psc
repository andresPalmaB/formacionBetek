Algoritmo ejercicio4
	//Diseñe un algoritmo que lea un numero e indique si es negativo o está entre cero y diez inclusive, 
	//o entre 11 y 20 inclusive, o entre 21 y 30 inclusive, o entre 31 y 50 inclusive o es mayor que 50.
	Definir num Como Entero
	
	Escribir "Digite el numero a analisar: "
	leer num
	
	Si num >= 0 y num <= 10 Entonces
		Escribir "El numero se encuentra entre 0 y 10"
	FinSi
	
	Si num >= 11 y num <= 20 Entonces
		Escribir "El numero se encuentra entre 11 y 20"
	FinSi
	
	si num >= 21 y num <= 30 Entonces
		Escribir "El numero se encuentra entre 21 y 30"
	FinSi
	
	si num >= 31 y num <= 50 Entonces
		Escribir "El numero se encuentra entre 31 y 50"
	FinSi
		
	Si num > 50 Entonces
		Escribir "El numero es mayor que 50"
	FinSi
FinAlgoritmo
