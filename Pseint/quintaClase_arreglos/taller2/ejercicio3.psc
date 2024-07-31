Algoritmo ejercicio3
	Definir palabra Como Caracter
	Definir cantidadVocales Como Entero
	
	Escribir "Digite una palabra: "
	Leer palabra
	
	cantidadVocales = calcularCantidadVocales(palabra)
	
	Escribir "La cantidad de Vocales que tiene su palabra es: ", cantidadVocales
FinAlgoritmo

SubAlgoritmo cantidadVocales <- calcularCantidadVocales(palabra)
	Definir letra Como Caracter
	Definir cantidadVocales Como Entero
	
	Para i <- 0 Hasta Longitud(palabra) - 1  Hacer
		letra <- Subcadena(palabra,i,i)
		Segun letra Hacer
			"a","e","i","o","u":
				cantidadVocales <- cantidadVocales + 1
		FinSegun
	FinPara
FinSubAlgoritmo
