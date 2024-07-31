package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Saber el ganador de un premio");
        System.out.print("Digite el numero de cliente: ");
        int cliente = scanner.nextInt();

        if (cliente == 1000){
            System.out.println("Ganaste un premio.");
        } else {
            System.out.println("Sigue participando.");
        }
    }
}
