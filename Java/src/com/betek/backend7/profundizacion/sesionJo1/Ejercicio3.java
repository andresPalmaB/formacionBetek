package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Saber si un numero entero es par o impar");
        System.out.print("Digite un numero entero: ");
        int num = scanner.nextInt();

        if (num % 2 == 0) {
            System.out.println("El numero digitado es par.");
        } else {
            System.out.println("El numero digitado es impar");
        }
    }
}
