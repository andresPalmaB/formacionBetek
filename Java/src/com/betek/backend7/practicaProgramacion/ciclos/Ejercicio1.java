package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Impresion de tabla de multiplicar");
        System.out.print("Digite un numero entero para saber hasta que tabla de multiplicar quiere llegar: ");
        int n = Integer.parseInt(scanner.nextLine());

        for (int i = 1; i <= n; i++) {
            System.out.println("Tabla de multiplicar numero " + i);
            for (int j = 1; j <= 10; j++) {
                int resultado = i * j;
                System.out.printf(" %d x %d = %d%n", i, j, resultado);
            }
            System.out.println();
        }
    }
}
