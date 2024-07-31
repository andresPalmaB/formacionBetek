package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Mostrar Suma Negativo");
        System.out.print("Digite el numero 1: ");
        double num1 = Double.parseDouble(scanner.nextLine());
        System.out.print("Digite el numero 2: ");
        double num2 = Double.parseDouble(scanner.nextLine());

        if (num1 + num2 < 0) {
            double resultado = num1 + num2;
            System.out.printf("%.2f + %.2f = %.2f", num1, num2, resultado);
        } else {
            System.out.println("No se cumplen con las condiciones.");
        }
    }
}
