package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio9 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Determinar si una letra es consonante.");
        System.out.print("Digite una letra del abecedario: ");
        String letra = scanner.nextLine();

        switch (letra.toLowerCase()){
            case "a", "e", "i", "o", "u":
                System.out.printf("La letra %s es una vocal", letra);
                break;
            default:
                System.out.printf("La letra %s es una consonante", letra);
                break;
        }
        scanner.close();
    }
}
