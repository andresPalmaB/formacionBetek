package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Multiplo de 2");
        System.out.print("Digite un numero entero: ");
        int numero = Integer.parseInt(scanner.nextLine());

        if (numero % 2 == 0){
            System.out.println("El numero ingresado es par.");
        } else {
            System.out.println("El numero ingresado es impar.");
        }
    }
}
