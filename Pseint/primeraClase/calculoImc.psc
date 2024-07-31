Algoritmo sin_titulo
	Definir peso, altura, imc como real
	
	Escribir ("Digite el peso")
	leer peso
	
	Escribir ("Digite la altura")
	Leer altura
	
	imc <- peso / (altura * altura)
	
	Si 18.5 < imc  y imc < 24.9 Entonces
		Escribir "Su IMC es: ", imc, ", su clasificacion es Normal"
	fin si
	
	Si 25 < imc y imc < 29.9 Entonces
		Escribir "Su IMC es: ", imc, ", su clasificacion es Sobrepeso"
	Fin Si
	
	Si 30 < imc y imc < 34.9 Entonces
		Escribir "Su IMC es: ", imc, ", su clasificacion es Obesidad Grado I"
	FinSi
	
	Si 35 < imc y imc < 39.9 Entonces
		Escribir "Su IMC es: ", imc, ", su clasificacion es Obesidad Grado II"
	FinSi
	
	Si imc > 40 Entonces
		Escribir "Su IMC es: ", imc, ", su clasificacion es Obesidad Grado III"
	FinSi
FinAlgoritmo
