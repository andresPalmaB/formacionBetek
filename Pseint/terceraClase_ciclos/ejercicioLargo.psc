Algoritmo ejercicioLargo
	// Declarar variables
    Definir n, cantidadTotal, valorTotal, maxCantidad, sumaPrecios, i Como Entero
    Definir nombre, nombreMaxProducto Como Cadena
    Definir cantidad, precio, promedioPrecio Como Real
    
    // Inicializar variables
    cantidadTotal <- 0
    valorTotal <- 0
    maxCantidad <- -1
    sumaPrecios <- 0
    
    // Leer la cantidad de productos en inventario
    Escribir "Ingrese la cantidad de productos en inventario:"
    Leer n
    
    // Ciclo para ingresar información de cada producto
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el nombre del producto ", i, ":"
        Leer nombre
        
        Repetir
            Escribir "Ingrese la cantidad actual en stock para ", nombre, ":"
            Leer cantidad
            Si cantidad < 0 Entonces
                Escribir "La cantidad no puede ser negativa. Intente nuevamente."
            FinSi
        Hasta Que cantidad >= 0
        
        Repetir
            Escribir "Ingrese el precio unitario para ", nombre, ":"
            Leer precio
            Si precio < 0 Entonces
                Escribir "El precio no puede ser negativo. Intente nuevamente."
            FinSi
        Hasta Que precio >= 0
        
        // Calcular la cantidad total de productos en stock
        cantidadTotal <- cantidadTotal + cantidad
        
        // Calcular el valor total del inventario
        valorTotal <- valorTotal + (cantidad * precio)
        
        // Calcular la cantidad máxima en stock y el producto correspondiente
        Si cantidad > maxCantidad Entonces
            maxCantidad <- cantidad
            nombreMaxProducto <- nombre
        FinSi
        
        // Acumular los precios para calcular el promedio
        sumaPrecios <- sumaPrecios + precio
    FinPara
    
    // Calcular el promedio de precios unitarios
    promedioPrecio <- sumaPrecios / n
    
    // Mostrar los resultados
    Escribir "La cantidad total de productos en stock es: ", cantidadTotal
    Escribir "El valor total del inventario es: ", valorTotal
    Escribir "El producto con la mayor cantidad en stock es: ", nombreMaxProducto
    Escribir "La cantidad máxima en stock de un solo producto es: ", maxCantidad
    Escribir "El promedio de precios unitarios de todos los productos es: ", promedioPrecio
	
FinAlgoritmo
