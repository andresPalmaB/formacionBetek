Algoritmo salarioNeto
	Definir salario, horas, salarioMensual, subsidio Como Real
	Definir nombre Como Caracter
	
	Escribir Sin Saltar "Digite el nombre completo del trabajador: "
	Leer nombre
	
	Escribir Sin Saltar "Digite salario basico por hora trabajada: "
	Leer salario
	
	Escribir Sin Saltar "Digite el numero de horas trabajadas en el mes: "
	Leer horas
	
	salarioMensual <- salario * horas
	subsidio <- 162000
	
	Si salarioMensual <= 2600000 Entonces
		Escribir "El empleado: ", nombre
		Escribir "Tiene un salario mensual de: ", salarioMensual
		Escribir "Tiene un subsidio de transporte de: ", subsidio
		Escribir "Su salario neto es de: ", salarioMensual + subsidio
	SiNo
		Escribir "Usted a superado la barrera de los 2 SMMV"
	FinSi
FinAlgoritmo
