package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Sacar por pantalla los años complidos del usuario.");
        System.out.print("Digite la edad de el usuario: ");
        int edad = scanner.nextInt();

        for (int i = 1; i <= edad; i++) {
            if (i == 1){
                System.out.printf("El usuario cumplio %d anio%n", i);
            } else {
                System.out.printf("El usuario cumplio %d anios%n", i);
            }
        }
    }
}
