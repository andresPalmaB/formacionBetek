package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio6 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Cantidad de estudiante que sacaron nota entre 3.5 y 4.5");
        System.out.print("Digite el numero de estudiantes a evaluar: ");
        int n = Integer.parseInt(scanner.nextLine());
        int contador = 0;
        double nota;

        for (int i = 1; i <= n; i++){
            System.out.printf("Digite la nota del estudiante %d: ", i);
            nota = Double.parseDouble(scanner.nextLine());
            if (nota > 3.5 && nota < 4.5) {
                contador++;
            }
        }

        System.out.printf("El numero de estudiantes que sacaron una nota entre 3.5 y 4.5 fue de: %d", contador);
    }
}
