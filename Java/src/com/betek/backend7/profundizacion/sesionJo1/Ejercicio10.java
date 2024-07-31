package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio10 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Dependiendo de la edad del Usuario debera tributar un impuesto.");
        System.out.print("Digite la edad del usuario: ");
        int edad = scanner.nextInt();

        if (edad >= 16){
            System.out.println("El usuario debe de tributar el impuesto.");
        } else {
            System.out.println("El usuario no debe de tributar el impuesto.");
        }
    }
}
