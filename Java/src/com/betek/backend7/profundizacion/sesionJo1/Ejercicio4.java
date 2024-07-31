package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Mostar por pantalla los numeros del 0 al 100");
        for (int i = 0; i <= 100; i++) {
            if (i % 10 == 0){
                System.out.println();
            }
            System.out.printf("%d ",i);
        }
        System.out.println();
    }
}
