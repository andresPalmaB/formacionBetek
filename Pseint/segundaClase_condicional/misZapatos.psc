Algoritmo misZapatos
	Definir compra, descuento Como Real
	
	Escribir "Mis Zapatos está de aniversario, y queremos darte un descuento por tu compra."
	Escribir Sin Saltar "Valor de la compra: "
	Leer compra
	
	Si compra >= 100000 Entonces
		descuento <- compra * 0.5
		Escribir "Usted tiene un descuento de 50% del valor de su compra."
		Escribir "su valor a cancelar es de: ", descuento, ". El valor descontado es de: ", (compra - descuento)
	SiNo
		descuento <- compra * 0.9
		Escribir "Usted tiene un descuento de 10% del valor de su compra."
		Escribir "su valor a cancelar es de: ", descuento, ". El valor descontado es de: ", (compra - descuento)
	FinSi
FinAlgoritmo
