package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Calculo de factorial");
        System.out.print("Digite un numero para calcular su factorial: ");
        int num = Integer.parseInt(scanner.nextLine());
        int resultado = 1;

        for (int i = 2; i <= num; i++) {
            resultado = resultado * i;
        }

        System.out.printf("El factorial del numero %d es: %d", num, resultado);
    }
}
