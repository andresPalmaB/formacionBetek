Algoritmo servicioInternet
	Definir dni, servicio Como Real
	
	Escribir Sin Saltar "Digite el DNI del usuario a consultar: "
	Leer dni
	
	Escribir "Digite el numero del servicio el cual tiene el usuario, recuerde que:"
	Escribir "1. Internet 30 megas"
	Escribir "2. Internet 50 megas"
	Escribir "3. Internet 100 megas"
	Leer servicio
	
	Segun servicio
		1:
			Escribir "El usuario con numero de DNI ", dni, "tiene un plan de internet de 30 megas, el valor a cancelar es de: ", 750 * 0.9
			Escribir "Tiene un descuento del 10% en el valor de la factura."
		2:
			Escribir "El usuario con numero de DNI ", dni, "tiene un plan de internet de 50 megas, el valor a cancelar es de: ", 930 * 0.95
			Escribir "Tiene un descuento del 5% en el valor de la factura."
		3:
			Escribir "El usuario con numero de DNI ", dni, "tiene un plan de internet de 100 megas, el valor a cancelar es de: ", 1200
			Escribir "Su plan tiene costo fijo"
	FinSegun
	
FinAlgoritmo
