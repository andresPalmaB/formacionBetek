package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int contador = 0;

        System.out.println("Suma de los numeros del 100 al 200.");
        for (int i = 100; i < 200; i++) {
            contador += i;
        }

        System.out.printf("La suma de los numeros del 100 al 200 es: %d", contador);
    }
}
