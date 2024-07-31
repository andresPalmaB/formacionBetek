Algoritmo workShop2
	Definir option, numeroEmpleados, datosEmpleado, contadorEmpleados, empleado, respuesta Como Entero
	numeroEmpleados <- 10
	datosEmpleado <- 5
	contadorEmpleados <- 0
	respuesta <- 0
	
	Dimension empleadosEmpresa(numeroEmpleados, datosEmpleado) 
	
	Escribir "----------BIENVENIDO AL SISTEMA DE GESTION DE EMPLEADOS----------"
	
	Repetir
		Limpiar Pantalla
		Escribir " "
		Escribir " MENU: "
		Escribir "  1. Nuevo empleado"
		Escribir "  2. Modificar empleado"
		Escribir "  3. Listar empleados"
		Escribir "  4. Consultar Empleado"
		Escribir "  5. Ver empleados con mas salario"
		Escribir "  6. Calcular valor de la nomina mensual"
		Escribir "  7. Salir"
		option <- validacionEnteroPositivo(option, 1, 7)
		
		Segun option Hacer
			1:
				Si respuesta = 0 Entonces
					Escribir Sin Saltar "Desea Hacer una prueba con 5 empleados generados por el programa, 1 para si, 2 para no : "
					Leer respuesta
					respuesta <- validacionEnteroPositivo(respuesta, 3, contadorEmpleados)
				FinSi
				
				Segun respuesta Hacer
					1:
						llenarMatrisEmpleados(empleadosEmpresa)
						contadorEmpleados <- 5
						respuesta <- 2
					2:
						Si no (contadorEmpleados = numeroEmpleados) Entonces
							nuevoEmpleado(empleadosEmpresa, contadorEmpleados, datosEmpleado)
							contadorEmpleados <- contadorEmpleados + 1
						Sino
							Escribir " No se pueden agregar mas de 10 empleados a la empresa, hable con su programador."
						FinSi
				FinSegun
			2:
				si contadorEmpleados > 0 Entonces
					
					Escribir " ¿A que empleado quieres realizarle la modificacion de informacion?"
					empleado <- validacionEnteroPositivo(empleado, 2, contadorEmpleados)
					modificarEmpleado(empleadosEmpresa, empleado - 1, datosEmpleado)
				Sino
					Escribir "No hay empleados registrados."
				FinSi
				
			3:
				si contadorEmpleados > 0 Entonces
					
					Escribir " Los empleados registrados hasta el momento son: "
					listarEmpleados(empleadosEmpresa, contadorEmpleados, datosEmpleado)
				Sino
					Escribir "No hay empleados registrados."
				FinSi
				
			4:
				si contadorEmpleados > 0 Entonces
					
					Escribir " ¿A que empleado quieres consultar la informacion?"
					empleado <- validacionEnteroPositivo(empleado, 2, contadorEmpleados)
					
					consultarEmpleado(empleadosEmpresa, empleado - 1, datosEmpleado)
				sino 
					Escribir "No hay empleados registrados."
				FinSi
				
			5:
				Si contadorEmpleados > 0 Entonces
					salarioMasAlto(empleadosEmpresa, contadorEmpleados, datosEmpleado)
				SiNo
					Escribir "No hay empleados registrados. "
				finsi
			6:
				si contadorEmpleados > 0 Entonces
					CalculoNominaMensual(empleadosEmpresa, contadorEmpleados)
				sino 
					escribir "No hay empleados registrados. "
				FinSi
				
		FinSegun
		
		Si option = 7 Entonces
			Escribir "¡Gracias por participar del Sistema de Gestion de Empleados!"
		FinSi
		Esperar 4 segundos 
	Hasta Que option = 7
FinAlgoritmo

// Verifica que el usuario seleccional la opcion adecuada
SubAlgoritmo num <- validacionEnteroPositivo(num, num2, num3)
	// num: Valor al que se le va a hacer la validacion (option, empleado)
	// num2: en el algoritma se deben hacer validacion diferente este seleccional la opcion adecuada (1, 2)
	// num3: numero de empleados que van al momento de validar, si empleado = 5, num3 = 5 (empleados)
    Segun num2 Hacer
        1: // Validación del menú principal
            Repetir
                Escribir Sin Saltar "Escoja la opcion que quiera realizar entre 1 y 7: "
                Leer num
                Si (num < 1 o num > 7) Entonces
                    Escribir "El numero es menor que 1 o mayor que 7."
                FinSi
            Hasta Que num >= 1 y num <= 7
        2: // Validación de selección de empleado
            Repetir
                Escribir Sin Saltar "Escoja el numero de empleado entre 1 y ", num3, ": "
                Leer num
                Si (num < 1 o num > num3) Entonces
                    Escribir "El numero es menor que 1 o mayor que ", num3, "."
                FinSi
            Hasta Que num >= 1 y num <= num3
		3:
			Repetir
                Si (num < 1 o num > 2) Entonces
                    Escribir "El numero es menor que 1 o mayor que 2."
					Escribir Sin Saltar "Escoja la opcion que quiera realizar entre 1 y 2: "
					Leer num
                FinSi
            Hasta Que num >= 1 y num <= 2
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
	Escribir ""
    Escribir "Empleado agregado exitosamente."
	Escribir ""
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
	Escribir ""
    Escribir "Empleado actualizado exitosamente."
	Escribir ""
FinSubAlgoritmo

// lista a todos los empleados que han sido registrados
SubAlgoritmo listarEmpleados(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleados registrados a la fecha (contadorEmpleados)
	// columna: Cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
    Para i <- 0 Hasta fila - 1 Hacer
        Para j <- 0 Hasta columna - 1 Hacer
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

// Puedes hacre la consulta de cualquien empleado resgistrado
SubAlgoritmo consultarEmpleado(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleado al que se le quiere saber la informacion (empleados)
	// columna: Cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
    Para j <- 0 Hasta columna - 1 Hacer
        Segun j + 1 Hacer
            1:
                Escribir Sin Saltar matriz(fila,j), " "
            2:
                Escribir Sin Saltar matriz(fila,j), " "
            3:
                Escribir Sin Saltar "(", matriz(fila,j), "), "
            4:
                Escribir Sin Saltar matriz(fila,j + 1), " - "
            5:
                Escribir Sin Saltar matriz(fila,j - 1)
        FinSegun
    FinPara
	Escribir ""
FinSubAlgoritmo

SubAlgoritmo salarioMasAlto(matriz, fila, columna)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleados registrados a la fecha (contadorEmpleados)
	// columna: Cantidad de datos que hacen parte del registro del empleado (datosEmpleado)
	
	Dimension arreglo(fila), arreglo2(columna)
	
	Para i <- 0 Hasta fila - 1 Hacer
		arreglo(i) <- matriz(i, 3)
	FinPara
	
	quickSort(arreglo, fila)
	
    mitad <- (fila - 1) / 2
	
    Para i=0 Hasta mitad Con Paso 1 Hacer
        temp = arreglo[i]
        arreglo[i] = arreglo[fila-i-1]
        arreglo[fila-i-1] = temp
    FinPara
	
	Para i <- 0 Hasta fila - 1 Hacer
		cont <- 0
		Repetir
			Si matriz(cont, 3) = arreglo(i) Entonces
				Para j <- 0 Hasta columna - 1 Hacer
					arreglo2(j) <- matriz(i, j)
					matriz(i, j) <- matriz(cont, j)
					matriz(cont, j) <- arreglo2(j)
				FinPara
			SiNo
				cont <- cont + 1
			FinSi
		Hasta Que matriz(i, columna-2) = arreglo(i)
	FinPara
	
	Si fila <= 5 Entonces
		Escribir "El top ", fila, " de empleados que mas ganan en la empresa es: "
		Para i <- 0 Hasta fila - 1 Hacer
			Para j <- 0 Hasta columna - 1 Hacer
				Segun j + 1 Hacer
					1:
						Escribir Sin Saltar matriz(i,j), " "
					2:
						Escribir Sin Saltar matriz(i,j), " - "
					4:
						Escribir Sin Saltar matriz(i,j)
				FinSegun
			FinPara
			Escribir ""
		FinPara
	SiNo
		Escribir "El top 5 de empleados que mas ganan en la empresa es: "
		Para i <- 0 Hasta 4 Hacer
			Para j <- 0 Hasta columna - 1 Hacer
				Segun j + 1 Hacer
					1:
						Escribir Sin Saltar matriz(i,j), " "
					2:
						Escribir Sin Saltar matriz(i,j), " - "
					4:
						Escribir Sin Saltar matriz(i,j)
				FinSegun
			FinPara
			Escribir ""
		FinPara
	FinSi
FinSubAlgoritmo

SubAlgoritmo CalculoNominaMensual(matriz, fila)
	// matriz: Empleados de la empresa con su informacion personal (empleadosEmpresa)
	// fila: Empleados registrados a la fecha (contadorEmpleados)
    Definir nomina Como Real
    nomina <- 0
	
    Para i <- 0 Hasta fila - 1 Hacer
        nomina <- nomina + ConvertirANumero(matriz(i, 3))
    FinPara
	Escribir " "
    Escribir "La nómina de la empresa es de: ", nomina
	Escribir " "
FinSubAlgoritmo



SubAlgoritmo quickSort(arreglo, n)
	Definir cont1, cont2 Como Entero
	
	pivote <- arreglo(0)
	Si no (n <= 1) Entonces
		//calculamos las dimensiones de los vectores para numero menores que el pivote
		//y numero mayores e iguales que el pivote
		Para i <- 1 Hasta n - 1 Hacer
			Si pivote > arreglo(i) Entonces
				cont1 <- cont1 + 1
			SiNo
				cont2 <- cont2 + 1
			FinSi
		FinPara
		
		//dimensionasmos los vectores para numero menores que el pivote
		//y numero mayores e iguales que el pivote
		Si no (cont1 = 0) Entonces
			Dimension arreglo1(cont1)
		FinSi
		
		Si no (cont2 = 0) Entonces
			Dimension arreglo2(cont2)
		FinSi
		
		//llenamos los vectores para numero menores que el pivote
		//y numero mayores e iguales que el pivote
		Para i <- 1 Hasta n - 1 Hacer
			Si pivote > arreglo(i) Entonces
				Si contador1 <= cont1 Entonces
					contador1 = contador1 + 1
					Para j <- contador1 - 1 Hasta cont1 - 1 Hacer
						arreglo1(j) <- arreglo(i)
					FinPara
				FinSi
			SiNo
				Si contador2 <= cont2 Entonces
					contador2 = contador2 + 1
					Para j <- contador2 - 1 Hasta cont2 - 1 Hacer
						arreglo2(j) <- arreglo(i)
					FinPara
				FinSi
			FinSi
		FinPara
		
		// se realiza la recursividad en arreglo para numero menores que el pivote
		Si no (cont1 = 0) Entonces
			quickSort(arreglo1, cont1)
		FinSi
		
		// se realiza la recursividad en arreglo para numero mayores que el pivote
		Si no (cont2 = 0) Entonces
			quickSort(arreglo2, cont2)
		FinSi
		
		arreglo(cont1) <- pivote
		
		// llenamos el arreglo original con los arreglos de numero mayores y menores que el pivote
		// ya organizadas
		Si no (cont1 = 0) Entonces
			Para i <- 0 Hasta cont1 - 1 Hacer
				arreglo(i) <- arreglo1(i)
			FinPara
		FinSi
		
		Si no (cont2 = 0) Entonces
			Si no (cont2 = 1) Entonces
				Para i <- 0 Hasta cont2 - 1 Hacer
					arreglo(cont1 + 1 + i) <- arreglo2(i)
				FinPara	
			SiNo
				arreglo(cont1 + 1) <- arreglo2(0)
			FinSi
		FinSi
	SiNo
		arreglo(0) <- pivote
	FinSi
FinSubAlgoritmo

SubAlgoritmo llenarMatrisEmpleados(matriz)
	matriz(0,0) <- "Rene"
	matriz(0,1) <- "Prasca"
	matriz(0,2) <- "1962"
	matriz(0,3) <- "7000"
	matriz(0,4) <- "CEO"
	
	matriz(1,0) <- "Andres"
	matriz(1,1) <- "Quintero"
	matriz(1,2) <- "1996"
	matriz(1,3) <- "2000"
	matriz(1,4) <- "COO"
	
	
	matriz(2,0) <- "Jhon"
	matriz(2,1) <- "Vargas"
	matriz(2,2) <- "2000"
	matriz(2,3) <- "3000"
	matriz(2,4) <- "CFO"
	
	
	matriz(3,0) <- "Angelica"
	matriz(3,1) <- "Picols"
	matriz(3,2) <- "1990"
	matriz(3,3) <- "6000"
	matriz(3,4) <- "CTO"
	
	
	matriz(4,0) <- "Patricia"
	matriz(4,1) <- "Teran"
	matriz(4,2) <- "1969"
	matriz(4,3) <- "4000"
	matriz(4,4) <- "CMO"
	
	Escribir ""
    Escribir "Empleado agregado exitosamente."
	Escribir ""
FinSubAlgoritmo
	