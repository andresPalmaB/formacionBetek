package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio11 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Determinar el promedio");
        int n = 15;
        double suma = 0;

        for (int i = 1; i <= n; i++){
            System.out.printf("Digite el numero %d: ", i);
            suma = suma + Double.parseDouble(scanner.nextLine());
        }

        System.out.printf("El promedio de los numeros ingresados fue: %.2f", suma / n);
    }
}
