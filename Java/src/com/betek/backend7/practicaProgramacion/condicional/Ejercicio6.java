package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Servicio Publico de Telefonia");
        System.out.println("Se le pedira al usuario que ingrese los datos a continuacion");
        System.out.print("Digite el DNI del cliente: ");
        int dni = Integer.parseInt(scanner.nextLine());

        System.out.println("1. Internet 30 megas.");
        System.out.println("2. Internet 50 megas.");
        System.out.println("3. Internet 100 megas.");
        System.out.print("Digite el numero que corresponde al servicio que usted tiene en casa: ");
        int servicio = Integer.parseInt(scanner.nextLine());
        double resultado;
        switch (servicio) {
            case 1:
                resultado = 750 * 0.9;
                System.out.printf("El usuario con numero de DNI %d tiene un plan de internet de 30 megas, el valor a cancelar es de: %.2f%n",dni, resultado);
                System.out.println("Tiene un descuento del 10% en el valor de la factura.");
                break;
            case 2:
                resultado = 930 * 0.95;
                System.out.printf("El usuario con numero de DNI %d tiene un plan de internet de 50 megas, el valor a cancelar es de: %.2f%n",dni, resultado);
                System.out.println("Tiene un descuento del 5% en el valor de la factura.");
                break;
            case 3:
                resultado = 1200;
                System.out.printf("El usuario con numero de DNI %d tiene un plan de internet de 100 megas, el valor a cancelar es de: %.2f%n",dni, resultado);
                System.out.println("Su plan tiene costo fijo.");
                break;
        }
    }
}
