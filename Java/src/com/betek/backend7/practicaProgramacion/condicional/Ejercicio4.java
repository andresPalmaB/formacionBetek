package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Tienda de calzado Mis Zapatos");
        System.out.print("Ingrese el valor de la compra realizada en la tienda: ");
        double ventaTotal = Float.parseFloat(scanner.nextLine());

        if (ventaTotal >= 100000) {
            ventaTotal = ventaTotal * 0.5;
            System.out.println("Usted a tenido un descuento del 50% el valor de su compra es de: " + ventaTotal);
        } else {
            ventaTotal = ventaTotal * 0.9;
            System.out.println("Usted a tenido un descuento del 10% el valor de su compra es de: " + ventaTotal);
        }
    }
}
