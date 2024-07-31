Algoritmo workShop2
	Definir option, numeroEmpleados, datosEmpleados, contadorEmpleados, empleado Como Entero
	
	numeroEmpleados <- 5
	datosEmpleado <- 5
	Dimension empleadosEmpresa(numeroEmpleado, datosEmpleado)

	Escribir "----------BIENVENIDO AL SISTEMA DE GESTION DE EMPLEADOS----------"
	
	Repetir
		Escribir " MENU: "
		Escribir "  1. Nuevo empleado"
		Escribir "  2. Modificar empleado"
		Escribir "  3. Listar empleados"
		Escribir "  4. Consultar Empleado"
		Escribir "  5. Ver empleados con mas salario"
		Escribir "  6. Calcular valor de la nomina mensual"
		Escribir "  7. Salir"
		option <- validacionEnteroPositivo(option, 1, contadorEmpleados)
		
		Segun option Hacer
			1:
				Si no (contadorEmpleados = numeroEmpleados - 1) Entonces
					nuevoEmpleado(empleadosEmpresa, contadorEmpleados, datosEmpleado)
					contadorEmpleados <- contadorEmpleados + 1
				SiNo
					Escribir " No se pueden agregar mas empleados a la empresa, hable con su programador."
				FinSi
			2:
				Escribir " ¿A que empleado quieres realizarle la modificacion de informacion?"
				empleado <- validacionEnteroPositivo(empleado, 2, contadorEmpleados)
				modificarEmpleado(empleadosEmpresa, empleado - 1, datosEmpleado)
			3:
				Escribir " Los empleados registrados hasta el momento son: "
				listarEmpleados(empleadosEmpresa, contadorEmpleados, datosEmpleado)
			4:
				Escribir " ¿A que empleado quieres consultar la informacion?"
				empleado <- validacionEnteroPositivo(empleado, 2, contadorEmpleados)
				consultarEmpleado(empleadosEmpresa, empleado, datosEmpleado)
			5:
				
			6:
				CalculoNominaMensual(empleadosEmpresa, contadorEmpleados)

		FinSegun
		Si option = 7 Entonces
			Escribir "¡Gracias por participar del Sistema de Gestion de Empleados!"
		FinSi
	Hasta Que option = 7
FinAlgoritmo

// Verifica que el usuario seleccional la opcion adecuada
SubAlgoritmo num <- validacionEnteroPositivo(num, num2, num3)
	// num: Valor al que se le va a hacer la validacion (option, empleado)
	// num2: en el algoritma se deben hacer validacion diferente este seleccional la opcion adecuada (1, 2)
	// num3: numero de empleados que van al momento de validar, si empleado = 5, num3 = 5 (empleados)
	Segun num2 Hacer
		1:
			// Verifica que el usuario haya escogido la opcion correcta en el menu principal
			Repetir
				Escribir Sin Saltar "Escoja la opcion que quiera realizar entre 1 y 7: "
				Leer num
				
				Si (num < 1 o num > 7) Entonces
					Escribir "El numero es menor que 1 o mayor que 7."
				FinSi
			Hasta Que num > 0 y num < 8
		2:
			// Verifica que el usuario haya escogido la opcion correcta al seleccionar empleado
			Repetir
				Escribir Sin Saltar "Escoja la opcion que quiera realizar entre 1 y ", num3, ": "
				Leer num
				
				Si (num < 1 o num > num3) Entonces
					Escribir "El numero es menor que 1 o mayor que ", num3 + 1, "."
				FinSi
			Hasta Que num > 0 y num < num3
	FinSegun
FinSubAlgoritmo

//Registro de un nuevo empleado en la empresa
SubAlgoritmo nuevoEmpleado(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleados que estan en el registro de la empresa (contadorEmpleados)
	// columna: cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
	Para j <- 0 Hasta columna - 1 Hacer
		Segun j + 1 Hacer
			1:
				Escribir Sin Saltar "Escriba el nombre del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
			2:
				Escribir Sin Saltar "Escriba el apellido del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
			3:
				Escribir Sin Saltar "Escriba el año nacimiento del empleado ", fila + 1, " (Ejemplo: 2003): "
				Leer matriz(fila,j)
			4:
				Escribir Sin Saltar "Escriba el salario del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
			5:
				Escribir Sin Saltar "Escriba el cargo del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
		FinSegun
	FinPara
	Escribir "Empleado agregado exitosamente."
FinSubAlgoritmo

//Modifica algun dato del empleado
SubAlgoritmo modificarEmpleado(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleado a hacer la modificacion de informacion (empleados)
	// columna: Cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
	Para j <- 0 Hasta columna - 1 Hacer
		Segun j + 1 Hacer
			1:
				Escribir Sin Saltar "Escriba el nombre a modificar del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
			2:
				Escribir Sin Saltar "Escriba el apellido a modificar del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
			3:
				Escribir Sin Saltar "Escriba el año nacimiento a modificar del empleado ", fila + 1, " (Ejemplo: 2003): "
				Leer matriz(fila,j)
			4:
				Escribir Sin Saltar "Escriba el salario a modificar del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
			5:
				Escribir Sin Saltar "Escriba el cargo a modificar del empleado ", fila + 1, ": "
				Leer matriz(fila,j)
		FinSegun
	FinPara
	Escribir "Empleado actualizado exitosamente."
FinSubAlgoritmo

SubAlgoritmo listarEmpleados(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleados registrados a la fecha (contadorEmpleados)
	// columna: Cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
	Para i <- 0 Hasta fila Hacer
		Para j <- 0 Hasta columna Hacer
			Si j = 0 Entonces
				Escribir Sin Saltar i + 1, ". ", matriz(i,j), ", "
			SiNo
				Si j = 4 Entonces
					Escribir Sin Saltar matriz(i,j)
				FinSi
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubAlgoritmo

SubAlgoritmo consultarEmpleado(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleado al que se le quiere saber la informacion (empleados)
	// columna: Cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
	Para j <- 0 Hasta columna - 1 Hacer
		Segun j + 1 Hacer
			1:
				Escribir Sin Saltar matriz(fila,j), " "
			2:
				Escribir Sin Saltar matriz(fila,j) " "
			3:
				Escribir Sin Saltar "(", matriz(fila,j), "), "
			4:
				Escribir Sin Saltar matriz(fila,j + 1), " - "
			5:
				Escribir Sin Saltar matriz(fila,j - 1)
		FinSegun
	FinPara
FinSubAlgoritmo

SubAlgoritmo salarioMasAlto(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleados registrados a la fecha (contadorEmpleados)
	// columna: Cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
	
FinSubAlgoritmo

SubAlgoritmo CalculoNominaMensual(matriz, fila)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleados registrados a la fecha (contadorEmpleados)
	Definir nomina Como Real
	
	Para i <- 0 Hasta fila - 1 Hacer
		nomina <- nomina + matriz(i,4)
	FinPara
	Escribir "La nomina de la empresa es de: ", nomina
FinSubAlgoritmo
	