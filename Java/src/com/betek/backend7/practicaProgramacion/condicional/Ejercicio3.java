package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Mayor entre dos numeros");
        System.out.print("Digite el primer numero: ");
        float num1 = Float.parseFloat(scanner.nextLine());
        System.out.print("Digite el segundo numero: ");
        float num2 = Float.parseFloat(scanner.nextLine());

        if (num1 > num2) {
            System.out.println("El numero mayor es el primer numero.");
        } else if (num1 < num2) {
            System.out.println("El numero mayor es el segundo numero.");
        } else {
            System.out.println("los numeros son iguales.");
        }
    }
}
