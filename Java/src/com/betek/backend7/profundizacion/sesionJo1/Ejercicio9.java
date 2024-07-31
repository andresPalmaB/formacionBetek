package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio9 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Aplicar descuento a venta");
        System.out.print("Cuantas unidades desea comprar: ");
        int unidades = scanner.nextInt();
        final double precioUnitario = 40000;
        double precioFinal;
        double descuento;

        if (unidades > 5 && unidades <= 12){
            descuento = 0.9;
            precioFinal = unidades * precioUnitario * descuento;
        } else if (unidades > 12 && unidades <= 40){
            descuento = 0.8;
            precioFinal = unidades * precioUnitario * descuento;
        } else if (unidades > 40){
            descuento = 0.7;
            precioFinal = unidades * precioUnitario * descuento;
        } else {
            descuento = 0;
            precioFinal = unidades * precioUnitario;
        }

        if (descuento == 0){
            System.out.printf("El valor a cancelar es de: %.2f%n", precioFinal);
        } else {
            System.out.printf("Por su comprar tuvo un descuento de %.2f porciento, el valor a cancelar es de: %.2f%n", (1 - descuento)* 100, precioFinal);
        }
    }
}
