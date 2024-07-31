package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Datos de empleado");
        System.out.println("Digite los siguientes datos del empleado para saber si tiene veneficio en el sueldo");
        System.out.print("Digite el sueldo del empleado: ");
        float sueldo = Float.parseFloat(scanner.nextLine());

        if (sueldo < 500){
            System.out.print("Digite los anios de antiguedad del empleado: ");
            int antiguedad = Integer.parseInt(scanner.nextLine());
            if (antiguedad >= 10){
                sueldo = (float) (sueldo * 1.2);
                System.out.printf("Su nuevo sueldo sera: %.2f %n", sueldo);
            } else {
                sueldo = (float) (sueldo * 1.05);
                System.out.printf("Su nuevo sueldo sera: %.2f %n", sueldo);
            }
        } else {
            System.out.printf("Su sueldo no tuvo ningun aumento: %.2f %n", sueldo);
        }
    }
}
