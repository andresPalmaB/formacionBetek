Algoritmo ejercicio8
	Definir num1, num2, resultado Como Real
	Definir operacion Como Caracter
	Definir resultado2 Como Logico
	
	Escribir "Digite que operacion quiere realizar"
	Escribir "Escriba: suma, resta, multiplicacion, division, potencia"
	Escribir "menor, mayor, menor igual, mayor igual que: "
	Leer operacion
	
	Escribir "Digite primer numero: "
	Leer num1
	
	Escribir "Digite segundo numero:"
	Leer num2
	
	Segun operacion Hacer
		"suma":
			resultado <- num1 + num2
			Escribir "El resultado de la suma es: ", resultado
		"resta":
			resultado <- num1 - num2
			Escribir "El resultado de la resta es: ", resultado
		"multiplicacion":
			resultado <- num1 * num2
			Escribir "El resultado de la multiplicacion es: ", resultado
		"division":
			resultado <- num1 / num2
			Escribir "El resultado de la division es: ", resultado
		"potencia":
			resultado <- num1 ^ num2
			Escribir "El resultado de la potencia es: ", resultado
		"menor":
			resultado2 <- num1 < num2
			Si resultado2 Entonces
				Escribir "La pregunta realiza es: ", resultado2
			SiNo
				Escribir "La pregunta realiza es: ", resultado2
			FinSi
		"mayor":
			resultado2 <- num1 > num2
			Si resultado2 Entonces
				Escribir "La pregunta realiza es: ", resultado2
			SiNo
				Escribir "La pregunta realiza es: ", resultado2
			FinSi
		"menor igual":
			resultado2 <- num1 <= num2
			Si resultado2 Entonces
				Escribir "La pregunta realiza es: ", resultado2
			SiNo
				Escribir "La pregunta realiza es: ", resultado2
			FinSi
		"mayor igual":
			resultado2 <- num1 >= num2
			Si resultado2 Entonces
				Escribir "La pregunta realiza es: ", resultado2
			SiNo
				Escribir "La pregunta realiza es: ", resultado2
			FinSi
		De Otro Modo:
			Escribir  "No ha seleccionado la opcion correcta."
	FinSegun
	
FinAlgoritmo
