Funcion  NuevoEmpleado ( EmpleadosDatos )
	
	Definir Nombre, apellido, cargo, FechaNacimiento como cadena 
	Definir salario Como Real
	
	
	Escribir "Ingrese el nombre del empleado: "
	leer Nombre
	Escribir "Ingrese el apellido del empleado: "
	leer apellido
	Escribir "Ingrese la fecha de nacimiento: (Ejemplo: 30/03/2003)"
	leer FechaNacimiento
	Escribir "Ingrese el salario: "
	leer salario 
	Escribir "Ingrese el cargo: "
	leer cargo 
	
	
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Si EmpleadosDatos[i, 1] = "" Entonces
            EmpleadosDatos[i, 1] = Nombre
            EmpleadosDatos[i, 2] = apellido
            EmpleadosDatos[i, 3] = FechaNacimiento
            EmpleadosDatos[i, 4] = ConvertirATexto(salario)
            EmpleadosDatos[i, 5] = cargo
            Escribir "Empleado agregado exitosamente."
          
        FinSi
    Fin Para
Fin Funcion

Algoritmo WorkShop2
	
	
	Dimension listEmpleados[10,2]
	Dimension EmpleadosDatos[10,5]
	Escribir "----------BIENVENIDO AL SISTEMA DE GESTION DE EMPLEADOS----------"
	
	Escribir "MENU: "
	Escribir ">1. Nuevo empleado"
	Escribir ">2. Modificar empleado"
	Escribir ">3. Listar empleados"
	Escribir ">4. Consultar empleado"
	Escribir ">5. Ver empleados con más salario."
	Escribir ">6. Calcular valor de la nómina mensual."
	Escribir ">7. Salir"
	leer menu
	Segun menu 
		
		caso 1: 
			NuevoEmpleado(EmpleadosDatos)
	FinSegun

FinAlgoritmo
