package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Encontrar un numero que cumpla con las condiciones");
        boolean bandera = true;
        int n;
        do {
            System.out.print("Digite el numero a evaluar: ");
            n = Integer.parseInt(scanner.nextLine());
            if (n % 2 == 0){
                if (!(n % 5 == 0)) {
                    if (n > 100) {
                        if (n < 10000){
                            bandera = false;
                        }
                    }
                }
            }
            if (bandera){
                System.out.println("Numero no encontrado");
            }
        } while (bandera);
        System.out.printf("Numero encontrado: %d%n",n);
    }
}
