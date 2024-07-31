Algoritmo ejercicio2
	//Diseñe un algoritmo que lea únicamente dos números y muestre el resultado de sumar, restar, 
	//multiplicar y dividir esos dos números.
	Definir num1, num2, resultado Como Real
	
	Escribir "Digite primer numero: "
	Leer num1
	
	Escribir "Digite segundo numero:"
	Leer num2
	
	Para i = 1 Hasta 4 Hacer
		Segun i Hacer
			1:
				resultado <- num1 + num2
				Escribir "El resultado de la suma es: ", resultado
			2:
				resultado <- num1 - num2
				Escribir "El resultado de la resta es: ", resultado
			3:
				resultado <- num1 * num2
				Escribir "El resultado de la multiplicacion es: ", resultado
			4:
				resultado <- num1 / num2
				Escribir "El resultado de la division es: ", resultado
		FinSegun
	FinPara
	
FinAlgoritmo
