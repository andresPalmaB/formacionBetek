package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio8 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Calcular salario mensual de empleado.");
        System.out.print("Digite el nombre del empleado: ");
        String nombre = scanner.nextLine();
        System.out.print("Digite el salario por hora del empleado: ");
        double salario = Double.parseDouble(scanner.nextLine());
        System.out.print("Digite el numero hora trabajadas en el mes del empleado: ");
        int horas = Integer.parseInt(scanner.nextLine());

        final double salarioMinimo = 737717;
        final double subsidioTransporte = 83140;

        if (salario * horas <= 2 * salarioMinimo) {
            System.out.printf("Nombre del empleado: %s%n", nombre);
            System.out.printf("Salario mensual del empleado: %.2f%n", salario * horas);
            System.out.printf("Subsidio de transporte del empleado: %.2f%n", subsidioTransporte);
            System.out.printf("Salario mensual del empleado: %.2f%n", salario * horas + subsidioTransporte);
        } else {
            System.out.printf("Nombre del empleado: %s%n", nombre);
            System.out.printf("Salario mensual del empleado: %.2f%n", salario * horas);
            System.out.println("Subsidio de transporte del empleado: N/A");
            System.out.printf("Salario mensual del empleado: %.2f%n", salario * horas);
        }
    }
}
