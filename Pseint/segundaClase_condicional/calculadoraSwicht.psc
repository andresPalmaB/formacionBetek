Algoritmo calculadora
	Definir num1, num2, resultado Como Real
	Definir operacion Como Caracter
	
	Escribir "Digite que operacion quiere realizar, Escriba: suma, resta, multiplicacion, division"
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
		De Otro Modo:
			Escribir  "No ha seleccionado la opcion correcta."
	FinSegun
FinAlgoritmo
