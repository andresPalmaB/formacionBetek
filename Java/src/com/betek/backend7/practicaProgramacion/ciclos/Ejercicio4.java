package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Notas de estudiantes");
        System.out.print("Digite el numero de estudiantes: ");
        int estudiantes = Integer.parseInt(scanner.nextLine());
        System.out.print("Digite la nota mas alta que puede sacar un estudiantes: ");
        int notaAlta = Integer.parseInt(scanner.nextLine());
        double nota;
        int contador = 0;
        double notaMasAlta = -9999;
        double notaMasBaja =  9999;

        for (int i = 1; i <= estudiantes; i++) {
            do {
                System.out.printf("Digite la nota del estudiante %d: ", i);
                nota = Double.parseDouble(scanner.nextLine());
            } while ( nota < 0 && nota > notaAlta);

            if (nota >= notaAlta * 0.6) {
                contador++;
            }

            if (nota > notaMasAlta) {
                notaMasAlta = nota;
            }

            if (nota < notaMasBaja) {
                notaMasBaja = nota;
            }
        }

        System.out.printf("La cantidad de estudiante que ganaron fueron: %d%n", contador);
        System.out.printf("La nota mas alta del curso fue: %.2f%n", notaMasAlta);
        System.out.printf("La nota mas baja del curso fue: %.2f%n", notaMasBaja);
    }
}
