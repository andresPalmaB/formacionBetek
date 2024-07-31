Proceso Signo_Zodiacal1
	Definir mes, dia Como Entero
	
	Escribir "Signo Zodiacal"
	mes <- validacionMes(mes)
	dia <- validacionDia(dia, mes)
	
	Escribir "El signo zodiacal correspondiente al mes y dia de nacimiento es: " definirSignoZodiacal(mes, dia)
FinProceso

SubProceso mes <- validacionMes(mes)
	Definir mesValido Como Logico
	
	Mientras no mesValido Hacer
		Escribir "Digite el mes a analizar: "
		Leer mes
		Si mes > 0 y mes < 13 Entonces
			mesValido = Verdadero
		SiNo
			Escribir "Valor ingresado es incorrecto."
		FinSi
	FinMientras
FinSubProceso

SubProceso dia <- validacionDia(dia, mes)
	Definir diaValido Como Logico
	
	Mientras No diaValido Hacer
		Escribir "Digite el dia a analizar: "
		Leer dia
		Segun mes Hacer
			1, 3, 5, 7, 8, 10, 12:
				Si dia > 0 y dia < 32 Entonces
					diaValido <- Verdadero
				SiNo
					Escribir "Valor Ingresado es incorrecto."
				FinSi
			4, 6, 9, 11:
				Si dia > 0 y dia < 31 Entonces
					diaValido <- Verdadero
				SiNo
					Escribir "Valor Ingresado es incorrecto."
				FinSi
			2:
				Si dia > 0 y dia < 30 Entonces
					diaValido <- Verdadero
				SiNo
					Escribir "Valor Ingresado es incorrecto."
				FinSi
		FinSegun
	FinMientras
FinSubProceso

SubProceso signoZodiacal <- definirSignoZodiacal(mes, dia)
	Segun mes Hacer
		1:
			Si dia >= 20 Entonces
				Escribir "Acuario"
			SiNo
				Escribir "Capricornio"
			FinSi
		2:
			Si dia >= 19 Entonces
				Escribir "Piscis"
			SiNo
				Escribir "Acuario"
			FinSi
		3:
			Si dia >= 21 Entonces
				Escribir "Aries"
			SiNo
				Escribir "Piscis"
			FinSi
		4:
			Si dia >= 20 Entonces
				Escribir "Tauro"
			SiNo
				Escribir "Aries"
			FinSi
		5:
			Si dia >= 21 Entonces
				Escribir "Geminis"
			SiNo
				Escribir "Tauro"
			FinSi
		6:
			Si dia >= 21 Entonces
				Escribir "Cancer"
			SiNo
				Escribir "Genimis"
			FinSi
		7:
			Si dia >= 23 Entonces
				Escribir "Leo"
			SiNo
				Escribir "Cancer"
			FinSi
		8:
			Si dia >= 24 Entonces
				Escribir "Virgo"
			SiNo
				Escribir "Leo"
			FinSi
		9:
			Si dia >= 23 Entonces
				Escribir "Libra"
			SiNo
				Escribir "Virgo"
			FinSi
		10:
			Si dia >= 23 Entonces
				Escribir "Escorpion"
			SiNo
				Escribir "Libra"
			FinSi
		11:
			Si dia >= 22 Entonces
				Escribir "Sagitario"
			SiNo
				Escribir "Escorpion"
			FinSi
		12:
			Si dia >= 22 Entonces
				Escribir "Capricornio"
			SiNo
				Escribir "Sagitario"
			FinSi
	FinSegun
FinSubProceso