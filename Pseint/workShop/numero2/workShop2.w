	Algoritmo workShop2
		Definir option, numeroEmpleados, datosEmpleado, contadorEmpleados, empleado Como Entero
		numeroEmpleados <- 5
		datosEmpleado <- 5
		contadorEmpleados <- 0
		
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
					Si no (contadorEmpleados = numeroEmpleados) Entonces
						nuevoEmpleado(empleadosEmpresa, contadorEmpleados, datosEmpleado)
						contadorEmpleados <- contadorEmpleados + 1
					SiNo
						Escribir " No se pueden agregar mas empleados a la empresa, hable con su programador."
					FinSi
				2:
					
					si contadorEmpleados >= 0 Entonces
						
						Escribir " ¿A que empleado quieres realizarle la modificacion de informacion?"
						empleado <- validacionEnteroPositivo(empleado, 2, contadorEmpleados)
						modificarEmpleado(empleadosEmpresa, empleado - 1, datosEmpleado)
					SiNo
						Escribir "No hay empleados registrados."
					
					FinSi
					
				3:
					si contadorEmpleados > 0 Entonces
						
						Escribir " Los empleados registrados hasta el momento son: "
						listarEmpleados(empleadosEmpresa, contadorEmpleados, datosEmpleado)
					SiNo
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
					salarioMasAlto(empleadosEmpresa, contadorEmpleados, datosEmpleado)
				6:
					CalculoNominaMensual(empleadosEmpresa, contadorEmpleados)
			FinSegun
			
			Si option = 7 Entonces
				Escribir "¡Gracias por participar del Sistema de Gestion de Empleados!"
			FinSi
			Esperar 3 segundos 
	Hasta Que option = 7
FinAlgoritmo

SubAlgoritmo num <- validacionEnteroPositivo(num, num2, num3)
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
    FinSegun
FinSubAlgoritmo

SubAlgoritmo nuevoEmpleado(matriz, fila, columna)
	
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

SubAlgoritmo modificarEmpleado(matriz, fila, columna)
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

SubAlgoritmo listarEmpleados(matriz, fila, columna)
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

SubAlgoritmo consultarEmpleado(matriz, fila, columna)
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
    Definir maxSalario Como Real
	Definir  maxEmpleado Como Entero
    maxSalario <- -1
	
    Para i <- 0 Hasta fila - 1 Hacer
		
		Si matriz(i, 3) > maxSalario Entonces
            maxSalario <- matriz(i, 3)
            maxEmpleado <- i
        FinSi
    FinPara
	
    Escribir "El empleado con el salario más alto es: "
    Escribir "Nombre: ", matriz(maxEmpleado, 0)
    Escribir "Apellido: ", matriz(maxEmpleado, 1)
    Escribir "Salario: ", matriz(maxEmpleado, 3)
FinSubAlgoritmo

SubAlgoritmo CalculoNominaMensual(matriz, fila)
    Definir nomina Como Real
    nomina <- 0
	
    Para i <- 0 Hasta fila - 1 Hacer
        nomina <- nomina + ConvertirANumero(matriz(i, 3))
    FinPara
	
    Escribir "La nómina de la empresa es de: ", nomina
FinSubAlgoritmo




