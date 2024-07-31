Algoritmo ejercicio1
	//Diseñe un algoritmo que lea tres números diferentes y muestre por pantalla el número que está 
	//en el medio de los otros dos. Es decir, que muestre el número que no es el menor ni el mayor.
	Definir num1, num2, num3 Como Real
	
	Escribir "Digite el primer numero: "
	Leer num1
	
	Escribir "Digite el Segundo numero: "
	Leer num2
	
	Escribir "Digite el Tercer numero: "
	Leer num3
	
	Si (num1 > num2 y num1 < num3) o (num1 > num3 y num1 < num2) Entonces
		Escribir "El numero ", num1, ", el primero, es el de la mitad"
	FinSi
	
	Si (num2 > num1 y num2 < num3) o (num1 > num2 y num1 < num3) Entonces
		Escribir "El numero ", num2, ", el segundo, es el de la mitad"
	FinSi
	
	Si (num3 > num1 y num3 < num2) o (num3 > num2 y num3 < num1) Entonces
		Escribir "El numero ", num3, ", el tecero, es el de la mitad"
	FinSi
FinAlgoritmo
