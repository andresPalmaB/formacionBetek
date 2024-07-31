package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Determinacion de un numero primo");
        System.out.print("Digite un numero entero mayor que 1 para saber si es primo: ");
        int num = Integer.parseInt(scanner.nextLine());
        int contador = 0;


        switch (num) {
            case 1, 0:
                System.out.println("El numero digitado no satisface la condicion.");
                contador++;
                break;
            case 2:
                System.out.println("El numero 2, es primo.");
                contador++;
                break;
            case 3:
                System.out.println("El numero 3, es primo.");
                contador++;
                break;
            default:
                for (int i = 2; i <= num / 2; i++) {
                    if (num % i == 0) {
                        contador++;
                    }
                }
                break;
        }

        if (num > 1) {
            if (contador > 0) {
                System.out.printf("El numero %d, no es primo.",num);
            } else {
                System.out.printf("El numero %d, es primo.",num);
            }
        }
    }
}
