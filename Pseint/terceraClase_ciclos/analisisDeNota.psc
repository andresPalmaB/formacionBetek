Algoritmo analisisDeNota
	Definir i, n, nota, ganaron, alta, baja Como Real
	
	ganaron <- 0
	alta <- 0
	baja <- 5
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
		
		Si nota >= 3.5 Entonces
			ganaron <- ganaron + 1
		FinSi
		Si nota > alta Entonces 
			alta <- nota
		FinSi
		Si nota < baja Entonces 
			baja <- nota
		FinSi
	FinPara
	
	Escribir "Los estudiantes que ganaron la materia fueron: ", ganaron
	Escribir "La nota mas alta fue: ", alta
	Escribir "La nota mas baja fue: ", baja
FinAlgoritmo
