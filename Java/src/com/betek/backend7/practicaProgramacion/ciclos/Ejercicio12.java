package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio12 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Impresion de tabla de multiplicar 3, 5, 7, 9");
        int n = 3;

        for (int i = n; i <= 9; i += 2) {
            System.out.println("Tabla de multiplicar numero " + i);
            for (int j = 1; j <= 15; j++) {
                int resultado = i * j;
                System.out.printf(" %d x %d = %d%n", i, j, resultado);
            }
            System.out.println();
        }
    }
}
