Algoritmo notasEntre
	Definir i, n, nota, entre Como Real
	
	entre <- 0
	nota <- 2.5
	Escribir Sin Saltar "A cuantos estudiante se les hará el analisis: "
	Leer n
	
	Para i = 1 Hasta n Hacer
		Repetir
			Si no (nota >= 0 y nota <= 5) Entonces
				Escribir "¡La nota debe estar en un rango de 0 a 5!"
			FinSi
			Escribir Sin Saltar "Digite la nota ", i
			Leer nota
		Hasta Que nota >= 0 y nota <= 5 
		
		Si nota >= 3.5  y nota <= 4.5 Entonces
			entre <- entre + 1
		FinSi
	FinPara
	
	Escribir "El numero de estudiantes que estan entre 3.5 y 4.5 fueron: ", entre
	
FinAlgoritmo
