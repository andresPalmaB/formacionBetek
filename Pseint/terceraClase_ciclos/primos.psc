Algoritmo primos
	Definir num, cont, i Como Entero
	cont <- 0
	Escribir "Digite el numero que quiere saber si es primo mayor que 1:"
	Leer num
	Si num <= 1 Entonces
		Escribir "¡Instruccion no ejecutada correctamente!"
	SiNo
		Segun num Hacer
			2:
				Escribir "El numero ", num, " es un numero primo."
			3:
				Escribir "El numero ", num, " es un numero primo."
			De Otro Modo:
				Para i = 2 Hasta num / 2 Hacer
					Si num mod i = 0 Entonces
						cont <- cont + 1
					FinSi
				FinPara
				
				Si cont = 0 Entonces
					Escribir "El numero ", num, " es un numero primo."
				SiNo
					Escribir "El numero ", num, " no es un numero primo."
				FinSi
		FinSegun
	FinSi
FinAlgoritmo
