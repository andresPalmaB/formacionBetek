Algoritmo calculadora
	Definir num1, num2, resultado Como Real
	Definir operacion Como Caracter
	
	Escribir "Digite que operacion quiere realizar, Escriba: suma, resta, multiplicacion, division"
	Leer operacion
	
	Escribir "Digite primer numero: "
	Leer num1
	
	Escribir "Digite segundo numero:"
	Leer num2
	
	Si operacion = "suma" Entonces
		resultado <- num1 + num2
		Escribir "El resutado de la suma es: ", resultado
	FinSi
	
	Si operacion = "resta" Entonces
		resultado <- num1 - num2
		Escribir "El resutado de la resta es: ", resultado
	FinSi
	
	Si operacion = "multiplicacion" Entonces
		resultado <- num1 * num2
		Escribir "El resutado de la multiplicacion es: ", resultado
	FinSi
	
	Si operacion = "division" Entonces
		resultado <- num1 / num2
		Escribir "El resutado de la division es: ", resultado
	FinSi
FinAlgoritmo
